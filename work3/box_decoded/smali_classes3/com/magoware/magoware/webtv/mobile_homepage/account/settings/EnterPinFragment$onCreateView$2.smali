.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "EnterPinFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->access$getArgs$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentArgs;->getShowAdult()Z

    move-result v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment$onCreateView$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->access$getArgs$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragmentArgs;->getPin()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;->access$intentPinDetail(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;ZLjava/lang/String;)V

    return-void
.end method
