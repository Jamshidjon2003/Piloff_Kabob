part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState() = _HomeState;
  const factory HomeState.bannerState(BannerResponse? banners) = BannerState;
}
