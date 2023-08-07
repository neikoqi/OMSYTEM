<%@ Page Title="" Language="C#" MasterPageFile="~/View/Administrator/Administrator.Master" AutoEventWireup="true" CodeBehind="Master.aspx.cs" Inherits="社团管理系统.View.Administrator.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid">
        <div class="row">
 <h1 class ="text-center">社团管理</h1>
        </div>
         <div class="row">
            <div class="col-mb-4">
                <div class="col-md-3">
                    <asp:Label ID="Label1" runat="server" Text="Label" for="" class="form-label text-success" ></asp:Label>
                    <asp:DropDownList ID="DropDownList1"  runat="server"  ></asp:DropDownList>
                   
                </div>
                <div class="col-md-3">
                    <asp:Label ID="Label2" runat="server" Text="Label" for=""></asp:Label>
                    <input type="text"  />
                </div>
                <div class="col-md-3">
                    <asp:Label ID="Label3" runat="server" Text="Label" class="form-label text-success"></asp:Label>
                    <input type="text" placeholder="" autocomplete="off"/>
                </div>
                <div class="col-md-3">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <input type="text"  />
                    <br />
                </div>
                <div class="row">
                    <div class="col-md-4" >
                        <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-block btn-success" Width="101px" />
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>

        </div>



         </div>
  
 

    
</asp:Content>
