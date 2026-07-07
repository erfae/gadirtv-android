.class public final synthetic Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$AssetDetailsDialog$eqlZh4G8M_IwN_lxCefKDYMUp2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$AssetDetailsDialog$eqlZh4G8M_IwN_lxCefKDYMUp2A;->f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$AssetDetailsDialog$eqlZh4G8M_IwN_lxCefKDYMUp2A;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$AssetDetailsDialog$eqlZh4G8M_IwN_lxCefKDYMUp2A;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$AssetDetailsDialog$eqlZh4G8M_IwN_lxCefKDYMUp2A;->f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$AssetDetailsDialog$eqlZh4G8M_IwN_lxCefKDYMUp2A;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$AssetDetailsDialog$eqlZh4G8M_IwN_lxCefKDYMUp2A;->f$2:Landroid/widget/TextView;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;

    invoke-virtual {v0, v1, v2, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/AssetDetailsDialog;->lambda$onCreateDialog$1$AssetDetailsDialog(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V

    return-void
.end method
