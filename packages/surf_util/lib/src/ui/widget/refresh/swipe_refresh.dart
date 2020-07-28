import 'package:flutter/cupertino.dart';
import 'package:relation/relation.dart';
import 'package:swipe_refresh/swipe_refresh.dart';

/// Refresh indicator widget based on [StreamedState].
class StreamedSwipeRefresh extends SwipeRefresh {
  StreamedSwipeRefresh(
    SwipeRefreshStyle style, {
    @required List<Widget> children,
    @required StreamedState<SwipeRefreshState> stateStream,
    @required VoidCallback onRefresh,
    Key key,
    Color indicatorColor,
    Color backgroundColor,
    double refreshTriggerPullDistance,
    double refreshIndicatorExtent,
    RefreshControlIndicatorBuilder indicatorBuilder,
  }) : super(style,
            key: key,
            children: children,
            onRefresh: onRefresh,
            stateStream: stateStream.stream,
            initState: stateStream.value,
            indicatorColor: indicatorColor,
            backgroundColor: backgroundColor,
            refreshTriggerPullDistance: refreshTriggerPullDistance,
            refreshIndicatorExtent: refreshIndicatorExtent,
            indicatorBuilder: indicatorBuilder);

  StreamedSwipeRefresh.adaptive({
    @required List<Widget> children,
    @required StreamedState<SwipeRefreshState> stateStream,
    @required VoidCallback onRefresh,
    Key key,
    Color indicatorColor,
    Color backgroundColor,
    double refreshTriggerPullDistance,
    double refreshIndicatorExtent,
    RefreshControlIndicatorBuilder indicatorBuilder,
  }) : super.adaptive(
          key: key,
          children: children,
          onRefresh: onRefresh,
          stateStream: stateStream.stream,
          initState: stateStream.value,
          indicatorColor: indicatorColor,
          backgroundColor: backgroundColor,
          refreshTriggerPullDistance: refreshTriggerPullDistance,
          refreshIndicatorExtent: refreshIndicatorExtent,
          indicatorBuilder: indicatorBuilder,
        );

  StreamedSwipeRefresh.material({
    @required List<Widget> children,
    @required StreamedState<SwipeRefreshState> stateStream,
    @required VoidCallback onRefresh,
    Key key,
    Color indicatorColor,
    Color backgroundColor,
  }) : super.material(
            key: key,
            children: children,
            onRefresh: onRefresh,
            stateStream: stateStream.stream,
            initState: stateStream.value,
            indicatorColor: indicatorColor,
            backgroundColor: backgroundColor);

  StreamedSwipeRefresh.cupertino({
    @required List<Widget> children,
    @required StreamedState<SwipeRefreshState> stateStream,
    @required VoidCallback onRefresh,
    Key key,
    double refreshTriggerPullDistance,
    double refreshIndicatorExtent,
    RefreshControlIndicatorBuilder indicatorBuilder,
  }) : super.cupertino(
          key: key,
          children: children,
          onRefresh: onRefresh,
          stateStream: stateStream.stream,
          initState: stateStream.value,
          refreshTriggerPullDistance: refreshTriggerPullDistance,
          refreshIndicatorExtent: refreshIndicatorExtent,
          indicatorBuilder: indicatorBuilder,
        );
}
