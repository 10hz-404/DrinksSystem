//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace DrinksSystem.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class S_Staff
    {
        public int staffID { get; set; }
        public string staffNumber { get; set; }
        public string staffPassword { get; set; }
        public string staffName { get; set; }
        public string staffPhone { get; set; }
        public Nullable<int> sexID { get; set; }
        public Nullable<int> positionID { get; set; }
        public string staffAddress { get; set; }
        public Nullable<bool> ifWarrant { get; set; }
    }
}
