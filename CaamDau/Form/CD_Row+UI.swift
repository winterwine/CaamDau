//Created  on 2018/12/13  by LCD :https://github.com/liucaide .

import Foundation

public class CD_TableViewCellBase: UITableViewCell{
    public struct Model {
        let icon:UIImage?
        let title:String?
        let titleColor:UIColor?
        let titleFont:UIFont?
        
        let detail:String?
        let detailColor:UIColor?
        let detailFont:UIFont?
        let accType: UITableViewCell.AccessoryType
        let accView:UIView?
        public init(icon:UIImage? = nil,
                    title:String? = nil,
                    titleColor:UIColor? = nil,
                    titleFont:UIFont? = nil,
                    detail:String? = nil,
                    detailColor:UIColor? = nil,
                    detailFont:UIFont? = nil,
                    accType:UITableViewCell.AccessoryType = .disclosureIndicator,
                    accView:UIView? = nil) {
            self.icon = icon
            self.title = title
            self.titleColor = titleColor
            self.titleFont = titleFont
            
            self.detail = detail
            self.detailColor = detailColor
            self.detailFont = detailFont
            self.accType = accType
            self.accView = accView
        }
    }
    func update(_ data: CD_TableViewCellBase.Model, id: String, tag: Int, frame: CGRect, callBack: CD_RowCallBack?) {
        self.accessoryType = data.accType
        self.textLabel?.text = data.title ?? ""
        self.textLabel?.textColor = data.titleColor ?? UIColor.black
        self.textLabel?.font = data.titleFont ?? UIFont.systemFont(ofSize: 14)
        
        self.detailTextLabel?.text = data.detail ?? ""
        self.detailTextLabel?.textColor = data.detailColor ?? UIColor.lightGray
        self.detailTextLabel?.font = data.detailFont ?? UIFont.systemFont(ofSize: 12)
        
        if let img = data.icon {
            self.imageView?.image = img
        }
        if let vv = data.accView {
            self.accessoryView = vv
        }
    }
}
extension CD_TableViewCellBase:CD_RowUpdateProtocol{
    public typealias DataSource = CD_TableViewCellBase.Model
    public func row_update(_ data: CD_TableViewCellBase.Model, id: String, tag: Int, frame: CGRect, callBack: CD_RowCallBack?) {
        self.update(data, id: id, tag: tag, frame: frame, callBack: callBack)
    }
}



//MARK:--- 默认的空 UICollectionViewCell CD_CollectionReusableView ----------
public class CD_CollectionViewCellNone: UICollectionViewCell{
    static let id:String = "CD_CollectionViewCellNone"
    func update(_ data: Any, id: String, tag: Int, frame: CGRect, callBack: CD_RowCallBack?) {
    }
}
extension CD_CollectionViewCellNone:CD_RowUpdateProtocol{
    public typealias DataSource = Any
    public func row_update(_ data: Any, id: String, tag: Int, frame: CGRect, callBack: CD_RowCallBack?) {
        self.update(data, id: id, tag: tag, frame: frame, callBack: callBack)
    }
}
public class CD_CollectionReusableViewNone: UICollectionReusableView {
    static let id:String = "CD_CollectionReusableViewNone"
    func update(_ data: Any, id: String, tag: Int, frame: CGRect, callBack: CD_RowCallBack?) {
    }
}
extension CD_CollectionReusableViewNone:CD_RowUpdateProtocol{
    public typealias DataSource = Any
    public func row_update(_ data: Any, id: String, tag: Int, frame: CGRect, callBack: CD_RowCallBack?) {
        self.update(data, id: id, tag: tag, frame: frame, callBack: callBack)
    }
}
