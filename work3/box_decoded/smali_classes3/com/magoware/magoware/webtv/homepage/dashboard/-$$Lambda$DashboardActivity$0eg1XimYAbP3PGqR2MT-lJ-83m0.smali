.class public final synthetic Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$0eg1XimYAbP3PGqR2MT-lJ-83m0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$0eg1XimYAbP3PGqR2MT-lJ-83m0;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/-$$Lambda$DashboardActivity$0eg1XimYAbP3PGqR2MT-lJ-83m0;->f$0:Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;

    invoke-static {v0, p1, p2, p3}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->lambda$setupListeners$0(Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
