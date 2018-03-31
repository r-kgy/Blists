
import Foundation
import UIKit

class BookDetailView: UIView {
    
    lazy var imageCardView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var contentsCardView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .lightGray
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    lazy var subtitleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textAlignment = .center
        return label
    }()
    
    lazy var authorPlaceholder: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "著者"
        label.textAlignment = .center
        return label
    }()
    
    lazy var authorLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textAlignment = .center
        return label
    }()
    
    lazy var publishedDatePlaceholder: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "発売日"
        label.textAlignment = .center
        return label
    }()
    
    lazy var publishedDateLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textAlignment = .center
        return label
    }()
    
    lazy var pageCountPlaceholder: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "ページ数"
        label.textAlignment = .center
        return label
    }()
    
    lazy var pageCountLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textAlignment = .center
        return label
    }()
    
    lazy var explanationArea: UITextView = {
        let text = UITextView(frame: .zero)
        text.font = UIFont.systemFont(ofSize: 16)
        text.isEditable = false
        return text
    }()
    
    lazy var buyRakutenButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = UIColor.hex(hexStr: "DC2C17", alpha: 1.0)
        button.setTitle("楽天で購入", for: .normal)
        return button
    }()
    
    lazy var buyAmazonButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = UIColor.hex(hexStr: "F19E39", alpha: 1.0)
        button.setTitle("Amazonで購入", for: .normal)
//        button.setImage(UIImage(named: "AmazonBuy-1"), for: .normal)
        return button
    }()
    
    lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.distribution = .fillEqually
        stackView.addArrangedSubview(buyRakutenButton)
        stackView.addArrangedSubview(buyAmazonButton)
        return stackView
    }()
    
    required init() {
        super.init(frame: .zero)
        backgroundColor = .white
//        addSubview(titleLabel)
//        addSubview(subtitleLabel)
//        addSubview(authorPlaceholder)
//        addSubview(authorLabel)
//        addSubview(publishedDatePlaceholder)
//        addSubview(publishedDateLabel)
//        addSubview(pageCountPlaceholder)
//        addSubview(pageCountLabel)
//        addSubview(explanationArea)
//        addSubview(buttonStackView)
        addSubview(imageCardView)
        addSubview(contentsCardView)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
//        activateConstraints()
        setupButtonDesgin()
        setupImageCardView()
        setupContentsCardView()
    }
    
    private func setupButtonDesgin() {
        buyRakutenButton.addShadow(.lightGray, opacity: 1.0, radius: 2.0, CGSize(width: 3, height: 3))
        buyRakutenButton.layer.cornerRadius = 20.0
        buyRakutenButton.addBorder()
        //        buyRakutenButton.layer.masksToBounds = false //角丸ではみ出した背景を切り取る
        
        buyAmazonButton.addShadow(.lightGray, opacity: 1.0, radius: 2.0, CGSize(width: 3, height: 3))
        buyAmazonButton.addBorder()
        buyAmazonButton.layer.cornerRadius = 20.0
        //        buyAmazonButton.layer.masksToBounds = false //角丸ではみ出した背景を切り取る
    }
    
    private func setupContentsCardView() {
        contentsCardView.translatesAutoresizingMaskIntoConstraints = false
        contentsCardView.topAnchor.constraint(equalTo: topAnchor, constant: 80).isActive = true
        contentsCardView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        contentsCardView.widthAnchor.constraint(equalToConstant: frame.width - 50).isActive = true
        contentsCardView.heightAnchor.constraint(equalToConstant: frame.height / 1.5)
        contentsCardView.layer.cornerRadius = 10.0
    }
    
    private func setupImageCardView() {
        imageCardView.translatesAutoresizingMaskIntoConstraints = false
        imageCardView.topAnchor.constraint(equalTo: topAnchor, constant: 80).isActive = true
        imageCardView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        imageCardView.widthAnchor.constraint(equalToConstant: frame.width / 2).isActive = true
        imageCardView.heightAnchor.constraint(equalToConstant: frame.height / 4)
        imageCardView.layer.cornerRadius = 10.0
    }
    
    private func activateConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 80).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: frame.width / 2).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        subtitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        subtitleLabel.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        subtitleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        authorPlaceholder.translatesAutoresizingMaskIntoConstraints = false
        authorPlaceholder.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 30).isActive = true
        authorPlaceholder.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        authorPlaceholder.widthAnchor.constraint(equalToConstant: frame.width / 3).isActive = true
        authorPlaceholder.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.topAnchor.constraint(equalTo: authorPlaceholder.bottomAnchor, constant: 20).isActive = true
        authorLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        authorLabel.widthAnchor.constraint(equalToConstant: frame.width / 3).isActive = true
        authorLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        publishedDatePlaceholder.translatesAutoresizingMaskIntoConstraints = false
        publishedDatePlaceholder.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 30).isActive = true
        publishedDatePlaceholder.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        publishedDatePlaceholder.widthAnchor.constraint(equalToConstant: frame.width / 3).isActive = true
        publishedDatePlaceholder.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        publishedDateLabel.translatesAutoresizingMaskIntoConstraints = false
        publishedDateLabel.topAnchor.constraint(equalTo: authorPlaceholder.bottomAnchor, constant: 20).isActive = true
        publishedDateLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        publishedDateLabel.widthAnchor.constraint(equalToConstant: frame.width / 3).isActive = true
        publishedDateLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
        pageCountPlaceholder.translatesAutoresizingMaskIntoConstraints = false
        pageCountPlaceholder.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 30).isActive = true
        pageCountPlaceholder.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        pageCountPlaceholder.widthAnchor.constraint(equalToConstant: frame.width / 3).isActive = true
        pageCountPlaceholder.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        pageCountLabel.translatesAutoresizingMaskIntoConstraints = false
        pageCountLabel.topAnchor.constraint(equalTo: authorPlaceholder.bottomAnchor, constant: 20).isActive = true
        pageCountLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        pageCountLabel.widthAnchor.constraint(equalToConstant: frame.width / 3).isActive = true
        pageCountLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50).isActive = true
        buttonStackView.widthAnchor.constraint(equalToConstant: frame.width - 50).isActive = true
        buttonStackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        buttonStackView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonStackView.spacing = 15
        
        explanationArea.translatesAutoresizingMaskIntoConstraints = false
        explanationArea.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 20).isActive = true
        explanationArea.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        explanationArea.widthAnchor.constraint(equalToConstant: frame.width - 30).isActive = true
        explanationArea.bottomAnchor.constraint(equalTo: buttonStackView.topAnchor, constant: -30).isActive = true
    }
  
    
}
