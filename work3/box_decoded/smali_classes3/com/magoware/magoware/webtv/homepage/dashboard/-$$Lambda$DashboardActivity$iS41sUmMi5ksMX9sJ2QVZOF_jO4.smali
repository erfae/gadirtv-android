.class public final synthetic Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$iS41sUmMi5ksMX9sJ2QVZOF_jO4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$iS41sUmMi5ksMX9sJ2QVZOF_jO4;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$iS41sUmMi5ksMX9sJ2QVZOF_jO4;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$iS41sUmMi5ksMX9sJ2QVZOF_jO4;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$iS41sUmMi5ksMX9sJ2QVZOF_jO4;->f$1:Landroid/widget/ImageView;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->lambda$showAfricaGetMovie$4$DashboardActivity(Landroid/widget/ImageView;Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V

    return-void
.end method
