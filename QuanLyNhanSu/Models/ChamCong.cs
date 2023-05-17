﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyNhanSu.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class ChamCong
    {
        [Display(Name = "Mã Chấm Công")]
        public int IdCC { get; set; }

        [Display(Name = "Ngày Chấm Công")]
        [DataType(DataType.Date)]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:dd/MM/yyyy}")]
        [Required(ErrorMessage ="Vui lòng không bỏ trống trường này!")]
        public Nullable<System.DateTime> NgayChamCong { get; set; }
        [Display(Name = "Mã Nhân Viên")]
        [Required(ErrorMessage = "Vui lòng không bỏ trống trường này!")]
        public Nullable<int> IdNV { get; set; }
    
        public virtual NhanVien NhanVien { get; set; }
    }
}
