

import UIKit
import Charts

class MovimientosVC: UIViewController {

    @IBOutlet weak var pieChart: PieChartView!
    var dataEntry = PieChartDataEntry(value: 0 , label: nil)
    var emptyDataEntry = PieChartDataEntry(value: 0, label: nil)
    var numberOfDownloadsDaaEntries = [PieChartDataEntry]()
    @IBOutlet weak var lineaCreditoInfo: UIView!
            
    override func viewDidLoad() {
        super.viewDidLoad()

        generatePieChart()

    }
    
    func generatePieChart()-> PieChartView{
        
        //data entries
        dataEntry.value = 77.0
        emptyDataEntry.value = 23.0
        numberOfDownloadsDaaEntries = [dataEntry,emptyDataEntry]
        
        //piechart hole and centertext properties
        pieChart.holeColor = .clear
        pieChart.holeRadiusPercent = 0.65
        let attributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: CGFloat(23.0)), NSAttributedString.Key.foregroundColor: UIColor.white]
        let centerTextAttribute = NSAttributedString(string: "77", attributes: attributes)
        pieChart.centerAttributedText = centerTextAttribute
        
        //legend and description attributes
        pieChart.chartDescription?.enabled = false
        pieChart.legend.enabled = false
        
        //datasets
        let chartDataSet = PieChartDataSet(entries: numberOfDownloadsDaaEntries)
        
        //colors for each data entry
        let colors = [UIColor(red:0.15, green:0.77, blue:0.78, alpha:1.00),UIColor.white]
        chartDataSet.colors = colors as! [NSUIColor]
        chartDataSet.valueTextColor = NSUIColor.clear
        chartDataSet.selectionShift = 0 //fils the whole pie chart in the view
        
        //create chart data from data set and assign it to the chart
        let chartData = PieChartData(dataSet: chartDataSet)
        pieChart.data = chartData
        
        //return generated data
        return pieChart
    }
    

}
