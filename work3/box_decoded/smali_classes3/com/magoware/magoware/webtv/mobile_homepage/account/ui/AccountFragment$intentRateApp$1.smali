.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$intentRateApp$1;
.super Ljava/lang/Object;
.source "AccountFragment.kt"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->intentRateApp(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnCompleteListener<",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0012\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "request",
        "Lcom/google/android/play/core/tasks/Task;",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        "kotlin.jvm.PlatformType",
        "onComplete"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$intentRateApp$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$intentRateApp$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    .line 82
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$intentRateApp$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    invoke-static {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->access$setReviewInfo$p(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;Lcom/google/android/play/core/review/ReviewInfo;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$intentRateApp$1;->$view:Landroid/view/View;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment$intentRateApp$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;

    const v1, 0x7f1403eb

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_0
    return-void
.end method
