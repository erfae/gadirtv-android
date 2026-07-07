.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$logOut$2;
.super Ljava/lang/Object;
.source "AccountFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->logOut()V
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
.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$logOut$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 149
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$logOut$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->getAccountViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$logOut$2;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;->logOut(Landroid/content/Context;)Lkotlinx/coroutines/Job;

    return-void
.end method
