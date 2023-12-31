// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:crypto_app_ui/models/asset_grid_data.dart';
import 'package:crypto_app_ui/models/chart_sample_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:crypto_app_ui/constants/contants.dart';
import 'package:crypto_app_ui/models/bottom_nav_model.dart';
import 'package:crypto_app_ui/models/crypto_data.dart';
import 'package:crypto_app_ui/models/trade_tab_bar_item.dart';
import 'package:crypto_app_ui/routes/app_routes.dart';

final bottomNavItems = [
  BottomNavItem(
    iconAsset: AppConstants.homeIcon,
    routeName: AppRoutes.home,
  ),
  BottomNavItem(
    iconAsset: AppConstants.assetIcon,
    routeName: AppRoutes.assets,
  ),
  BottomNavItem(
    iconAsset: AppConstants.tradeIcon,
    routeName: AppRoutes.trade,
  ),
  BottomNavItem(
    iconAsset: AppConstants.userIcon,
    routeName: AppRoutes.profile,
  ),
];

final profileListTileData = [
  'Limits and features',
  'Native currency',
  'Country',
  'Privacy',
  'Phone numbers',
  'Support',
];

final assetsGridData = [
  const AssetGridData(title: 'Low (24h)', price: '\$1,783.32'),
  const AssetGridData(title: 'High (24h)', price: '\$2,882.46'),
  const AssetGridData(title: 'Market cap', price: '\$1,783.32'),
  const AssetGridData(title: 'AHT', price: '\$1,783.32')
];

final cryptoDataList = [
  const CryptoData(
    coinSlug: 'ETH',
    iconAsset: AppConstants.ethIcon,
    coinName: 'Etherum',
    amount: '\$1,865.35',
    percent: '0.92%',
    rise: true,
  ),
  const CryptoData(
    coinSlug: 'XRP',
    iconAsset: AppConstants.xrpIcon,
    coinName: 'XRP',
    amount: '\$0.4682',
    rise: false,
    percent: '0.39%',
  ),
  const CryptoData(
    coinSlug: 'USDT',
    iconAsset: AppConstants.usdtIcon,
    coinName: 'Thether',
    amount: '\$1.00',
    rise: false,
    percent: '0.21%',
  ),
  const CryptoData(
    coinSlug: 'BNB',
    iconAsset: AppConstants.bnbIcon,
    coinName: 'BNB',
    amount: '\$337.52',
    rise: false,
    percent: '1.22%',
  ),
  const CryptoData(
    coinSlug: 'NEO',
    iconAsset: AppConstants.neoIcon,
    coinName: 'NEO',
    amount: '\$286.52',
    rise: true,
    percent: '4.22%',
  ),
  const CryptoData(
    coinSlug: 'ETH',
    iconAsset: AppConstants.ethIcon,
    coinName: 'Etherum',
    amount: '\$1,865.35',
    percent: '0.92%',
    rise: true,
  ),
  const CryptoData(
    coinSlug: 'XRP',
    iconAsset: AppConstants.xrpIcon,
    coinName: 'XRP',
    amount: '\$0.4682',
    rise: false,
    percent: '0.39%',
  ),
  const CryptoData(
    coinSlug: 'USDT',
    iconAsset: AppConstants.usdtIcon,
    coinName: 'Thether',
    amount: '\$1.00',
    rise: false,
    percent: '0.21%',
  ),
  const CryptoData(
    coinSlug: 'BNB',
    iconAsset: AppConstants.bnbIcon,
    coinName: 'BNB',
    amount: '\$337.52',
    rise: false,
    percent: '1.22%',
  ),
  const CryptoData(
    coinSlug: 'NEO',
    iconAsset: AppConstants.neoIcon,
    coinName: 'NEO',
    amount: '\$286.52',
    rise: true,
    percent: '4.22%',
  ),
];

final moversDataList = [
  const CryptoData(
    coinSlug: 'ADA',
    iconAsset: AppConstants.adaIcon,
    coinName: 'ADA',
    amount: '\$0.4682',
    rise: false,
    percent: '0.39%',
  ),
  const CryptoData(
    coinSlug: 'USDT',
    iconAsset: AppConstants.usdtIcon,
    coinName: 'Thether',
    amount: '\$1.00',
    rise: false,
    percent: '0.21%',
  ),
  const CryptoData(
    coinSlug: 'BNB',
    iconAsset: AppConstants.bnbIcon,
    coinName: 'BNB',
    amount: '\$337.52',
    rise: false,
    percent: '1.22%',
  ),
  const CryptoData(
    coinSlug: 'LTC',
    iconAsset: AppConstants.ltcIcon,
    coinName: 'LTC',
    amount: '\$286.52',
    rise: true,
    percent: '4.22%',
  ),
];

final tradeTabBarItems = [
  TradeTabBarItem(
    title: 'All assets',
    isSelected: true,
  ),
  TradeTabBarItem(
    title: 'Gainers',
    isSelected: false,
  ),
  TradeTabBarItem(
    title: 'Loosers',
    isSelected: false,
  ),
];

List<CandleSeries<ChartSampleData, DateTime>> candleSeriesData() {
  return <CandleSeries<ChartSampleData, DateTime>>[
    CandleSeries<ChartSampleData, DateTime>(
        enableSolidCandles: true,
        dataSource: <ChartSampleData>[
          ChartSampleData(
              x: DateTime(2016, 01, 11),
              open: 98.97,
              high: 101.19,
              low: 95.36,
              close: 97.13),
          ChartSampleData(
              x: DateTime(2016, 01, 18),
              open: 98.41,
              high: 101.46,
              low: 93.42,
              close: 101.42),
          ChartSampleData(
              x: DateTime(2016, 01, 25),
              open: 101.52,
              high: 101.53,
              low: 92.39,
              close: 97.34),
          ChartSampleData(
              x: DateTime(2016, 02),
              open: 96.47,
              high: 97.33,
              low: 93.69,
              close: 94.02),
          ChartSampleData(
              x: DateTime(2016, 02, 08),
              open: 93.13,
              high: 96.35,
              low: 92.59,
              close: 93.99),
          ChartSampleData(
              x: DateTime(2016, 02, 15),
              open: 95.02,
              high: 98.89,
              low: 94.61,
              close: 96.04),
          ChartSampleData(
              x: DateTime(2016, 02, 22),
              open: 96.31,
              high: 98.0237,
              low: 93.32,
              close: 96.91),
          ChartSampleData(
              x: DateTime(2016, 02, 29),
              open: 96.86,
              high: 103.75,
              low: 96.65,
              close: 103.01),
          ChartSampleData(
              x: DateTime(2016, 03, 07),
              open: 102.39,
              high: 102.83,
              low: 100.15,
              close: 102.26),
          ChartSampleData(
              x: DateTime(2016, 03, 14),
              open: 106.5,
              high: 106.5,
              low: 106.5,
              close: 106.5),
          ChartSampleData(
              x: DateTime(2016, 03, 21),
              open: 105.93,
              high: 107.65,
              low: 104.89,
              close: 105.67),
          ChartSampleData(
              x: DateTime(2016, 03, 28),
              open: 106,
              high: 110.42,
              low: 104.88,
              close: 109.99),
          ChartSampleData(
              x: DateTime(2016, 04, 04),
              open: 110.42,
              high: 112.19,
              low: 108.121,
              close: 108.66),
          ChartSampleData(
              x: DateTime(2016, 04, 11),
              open: 108.97,
              high: 112.39,
              low: 108.66,
              close: 109.85),
          ChartSampleData(
              x: DateTime(2016, 04, 18),
              open: 108.89,
              high: 108.95,
              low: 104.62,
              close: 105.68),
          ChartSampleData(
              x: DateTime(2016, 04, 25),
              open: 105,
              high: 105.65,
              low: 92.51,
              close: 93.74),
          ChartSampleData(
              x: DateTime(2016, 05, 02),
              open: 93.965,
              high: 95.9,
              low: 91.85,
              close: 92.72),
          ChartSampleData(
              x: DateTime(2016, 05, 09),
              open: 93,
              high: 93.77,
              low: 89.47,
              close: 90.52),
          ChartSampleData(
              x: DateTime(2016, 05, 16),
              open: 92.39,
              high: 95.43,
              low: 91.65,
              close: 95.22),
          ChartSampleData(
              x: DateTime(2016, 05, 23),
              open: 95.87,
              high: 100.73,
              low: 95.67,
              close: 100.35),
          ChartSampleData(
              x: DateTime(2016, 05, 30),
              open: 99.6,
              high: 100.4,
              low: 96.63,
              close: 97.92),
          ChartSampleData(
              x: DateTime(2016, 06, 06),
              open: 97.99,
              high: 101.89,
              low: 97.55,
              close: 98.83),
          ChartSampleData(
              x: DateTime(2016, 06, 13),
              open: 98.69,
              high: 99.12,
              low: 95.3,
              close: 95.33),
          ChartSampleData(
              x: DateTime(2016, 06, 20),
              open: 96,
              high: 96.89,
              low: 92.65,
              close: 93.4),
          ChartSampleData(
              x: DateTime(2016, 06, 27),
              open: 93,
              high: 96.465,
              low: 91.5,
              close: 95.89),
          ChartSampleData(
              x: DateTime(2016, 07, 04),
              open: 95.39,
              high: 96.89,
              low: 94.37,
              close: 96.68),
          ChartSampleData(
              x: DateTime(2016, 07, 11),
              open: 96.75,
              high: 99.3,
              low: 96.73,
              close: 98.78),
          ChartSampleData(
              x: DateTime(2016, 07, 18),
              open: 98.7,
              high: 101,
              low: 98.31,
              close: 98.66),
          ChartSampleData(
              x: DateTime(2016, 07, 25),
              open: 98.25,
              high: 104.55,
              low: 96.42,
              close: 104.21),
          ChartSampleData(
              x: DateTime(2016, 08),
              open: 104.41,
              high: 107.65,
              low: 104,
              close: 107.48),
          ChartSampleData(
              x: DateTime(2016, 08, 08),
              open: 107.52,
              high: 108.94,
              low: 107.16,
              close: 108.18),
          ChartSampleData(
              x: DateTime(2016, 08, 15),
              open: 108.14,
              high: 110.23,
              low: 108.08,
              close: 109.36),
          ChartSampleData(
              x: DateTime(2016, 08, 22),
              open: 108.86,
              high: 109.32,
              low: 106.31,
              close: 106.94),
          ChartSampleData(
              x: DateTime(2016, 08, 29),
              open: 109.74,
              high: 109.74,
              low: 109.74,
              close: 109.74),
          ChartSampleData(
              x: DateTime(2016, 09, 05),
              open: 107.9,
              high: 108.76,
              low: 103.13,
              close: 103.13),
          ChartSampleData(
              x: DateTime(2016, 09, 12),
              open: 102.65,
              high: 116.13,
              low: 102.53,
              close: 114.92),
          ChartSampleData(
              x: DateTime(2016, 09, 19),
              open: 115.19,
              high: 116.18,
              low: 111.55,
              close: 112.71),
          ChartSampleData(
              x: DateTime(2016, 09, 26),
              open: 111.64,
              high: 114.64,
              low: 111.55,
              close: 113.05),
        ],
        name: 'AAPL',
        showIndicationForSameValues: true,
        xValueMapper: (ChartSampleData sales, _) => sales.x,
        lowValueMapper: (ChartSampleData sales, _) => sales.low,
        highValueMapper: (ChartSampleData sales, _) => sales.high,
        openValueMapper: (ChartSampleData sales, _) => sales.open,
        closeValueMapper: (ChartSampleData sales, _) => sales.close)
  ];
}
