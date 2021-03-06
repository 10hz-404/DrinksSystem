using DrinksSystem.Models;
using DrinksSystem.Resources.control;
using DrinksSystem.Views.CheckoutCounterView;
using DrinksSystem.Views.DictionaryView;
using DrinksSystem.Views.HandoverView;
using DrinksSystem.Views.HomeView;
using DrinksSystem.Views.MemberView;
using DrinksSystem.Views.Product;
using DrinksSystem.Views.SaleView;
using DrinksSystem.Views.StaffView;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace DrinksSystem.ViewModels
{
    public class MainWindowViewModel:ViewModelBase
    {
        /// <summary>
        /// 实例化实体数据模型
        /// </summary>
        DrinksSystemEntities myModel = new DrinksSystemEntities();
        public MainWindowViewModel()
        {
            //产品管理
            ProducPageCommand = new RelayCommand<TabControl>(ProducPage);
            //字典管理
            DictionaryCommand = new RelayCommand<TabControl>(DictionaryPage);
            //员工管理
            StaffPageCommand = new RelayCommand<TabControl>(StaffPage);
            //交接班管理
            HandoverPageCommand = new RelayCommand<TabControl>(HandoverPage);
            //进入收银台
            CheckoutCounterCommand = new RelayCommand<Window>(CheckoutCounter);
            //会员管理
            MemberPageCommand = new RelayCommand<TabControl>(MemberPage);
            //销售管理
            SalePageCommand = new RelayCommand<TabControl>(SalePage);
            //首页
            HomePageCommand = new RelayCommand<TabControl>(HomePage);
            //页面加载
            LoadedCommand = new RelayCommand(Load);

            
        }
        #region 属性
        /// <summary>
        /// 选项卡
        /// </summary>
        public static TabControl TC;

        public int StaffIDNow;//当前用户ID
        
        //当前用户名称
        private string _staffName;
        public string StaffName
        {
            get { return _staffName; }
            set
            {
                if (_staffName != value)
                {
                    _staffName = value;
                    RaisePropertyChanged(() => StaffName);
                }
            }
        }
        #endregion

        #region 命令
        /// <summary>
        /// 产品管理
        /// </summary>
        public RelayCommand<TabControl> ProducPageCommand { get; set; }
        /// <summary>
        /// 字典管理
        /// </summary>
        public RelayCommand<TabControl> DictionaryCommand { get; set; }
        /// <summary>
        /// 员工管理
        /// </summary>
        public RelayCommand<TabControl> StaffPageCommand { get; set; }
        /// <summary>
        /// 员工管理
        /// </summary>
        public RelayCommand<TabControl> HandoverPageCommand { get; set; }
        /// <summary>
        /// 进入收银台
        /// </summary>
        public RelayCommand<Window> CheckoutCounterCommand { get; set; }
        /// <summary>
        /// 会员管理
        /// </summary>
        public RelayCommand<TabControl> MemberPageCommand { get; set; }
        /// <summary>
        /// 页面加载
        /// </summary>
        public RelayCommand LoadedCommand { get; set; }
        /// <summary>
        /// 销售管理
        /// </summary>
        public RelayCommand<TabControl> SalePageCommand { get; set; }
        // <summary>
        /// 首页
        /// </summary>
        public RelayCommand<TabControl> HomePageCommand { get; set; }
        #endregion

        #region 函数
        /// <summary>
        /// Tab选项卡
        /// </summary>
        public static void AddItem(string trtrname, UserControl uc)
        {
            //判断当前选项是否已存在
            bool bolWhetherBe = false;
            //判断是否大于0
            if (TC.Items.Count>0)
            {
                for (int i = 0; i < TC.Items.Count; i++)
                {
                    if (((UCTabItem)TC.Items[i]).Name==trtrname)
                    {
                        //选中当前选项卡
                        TC.SelectedItem = ((UCTabItem)TC.Items[i]);
                        bolWhetherBe = true;
                        break;
                    }
                }
                //不存在当前选项
                if (bolWhetherBe==false)
                {
                    //创建子选项
                    UCTabItem item = new UCTabItem();
                    item.Name = trtrname;
                    item.Width = 140;
                    item.Height = 40;
                    item.Header = string.Format(trtrname);
                    item.Content = uc;
                    TC.Items.Add(item);
                    TC.SelectedItem = item;
                }
            }
            else
            {
                //第一次添加TabItem
                UCTabItem item = new UCTabItem();
                item.Name = trtrname;
                item.Width = 140;
                item.Height = 40;
                item.Header = string.Format(trtrname);
                item.Content = uc;
                TC.Items.Add(item);
                TC.SelectedItem = item;
            }
        }
        //加载
        private void Load()
        {
            var list = (from tb in myModel.S_Staff where tb.staffID == StaffIDNow select tb).Single();
            StaffName = "当前用户：" + list.staffName;
        }
        #endregion

        #region 页面嵌套
        /// <summary>
        /// 产品管理
        /// </summary>
        private void ProducPage(TabControl tc)
        {
            TC = tc;
            Produc myProduc = new Produc();
            AddItem("产品管理", myProduc);
        }
        /// <summary>
        /// 字典管理
        /// </summary>
        private void DictionaryPage(TabControl tc)
        {
            TC = tc;
            DictionaryView myDictionary = new DictionaryView();
            AddItem("字典管理", myDictionary);
        }
        /// <summary>
        /// 员工管理
        /// </summary>
        private void StaffPage(TabControl tc)
        {
            TC = tc;
            StaffView myStaff = new StaffView();
            AddItem("员工管理", myStaff);
        }
        /// <summary>
        /// 交接班管理
        /// </summary>
        private void HandoverPage(TabControl tc)
        {
            TC = tc;
            HandoverView myHandover = new HandoverView();
            AddItem("交接班管理", myHandover);
        }
        /// <summary>
        /// 会员管理
        /// </summary>
        private void MemberPage(TabControl tc)
        {
            TC = tc;
            MemberView myMember = new MemberView();
            var myMemberVModel = (myMember.DataContext as DrinksSystem.ViewModels.MemberVModel.MemberVModel);
            myMemberVModel.StaffIDNow = StaffIDNow;//传递当前用户ID
            AddItem("会员管理", myMember);
        }
        /// <summary>
        /// 销售管理
        /// </summary>
        private void SalePage(TabControl tc)
        {
            TC = tc;
            SalesManagementView mySale = new SalesManagementView();
            AddItem("销售管理", mySale);
        }
        /// <summary>
        /// 首页
        /// </summary>
        private void HomePage(TabControl tc)
        {
            TC = tc;
            HomeView myHome = new HomeView();
            AddItem("主页", myHome);
        }
        /// <summary>
        /// 进入收银台
        /// </summary>
        private void CheckoutCounter(Window wd)
        {
            CheckoutCounterView myCheckoutCounte = new CheckoutCounterView();
            var myCheckoutCounteVModel = (myCheckoutCounte.DataContext as DrinksSystem.ViewModels.CheckoutCounterVModel.CheckoutCounterVModel);
            //myCheckoutCounteVModel.ProductTypeData = new List<S_Dictionary>();
            myCheckoutCounteVModel.StaffNow = (from tb in myModel.S_Staff where tb.staffID == StaffIDNow select tb).Single();
            myCheckoutCounte.Show();
            wd.Close();
        }
        
        #endregion
    }
}
