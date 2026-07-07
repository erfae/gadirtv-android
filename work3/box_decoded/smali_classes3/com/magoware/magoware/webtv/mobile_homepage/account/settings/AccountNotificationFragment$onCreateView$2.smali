.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "AccountNotificationFragment.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "isChecked",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $mView:Landroid/view/View;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p1, "mView"

    if-eqz p2, :cond_0

    .line 36
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p2, v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment;->access$setNotifications(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment;Landroid/view/View;I)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment$onCreateView$2;->$mView:Landroid/view/View;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p2, v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment;->access$setNotifications(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment;Landroid/view/View;I)V

    :goto_0
    return-void
.end method
