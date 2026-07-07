.class public final synthetic Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$kbdukr9PFAhsClxiv-nhOiwtwdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$kbdukr9PFAhsClxiv-nhOiwtwdU;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;

    iput p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$kbdukr9PFAhsClxiv-nhOiwtwdU;->f$1:I

    iput-object p3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$kbdukr9PFAhsClxiv-nhOiwtwdU;->f$2:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$kbdukr9PFAhsClxiv-nhOiwtwdU;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;

    iget v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$kbdukr9PFAhsClxiv-nhOiwtwdU;->f$1:I

    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$kbdukr9PFAhsClxiv-nhOiwtwdU;->f$2:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->lambda$drawMenuElementnew$2(Lcom/magoware/magoware/webtv/homepage/dashboard/LocalImageAdapter;ILandroid/graphics/Bitmap;)V

    return-void
.end method
