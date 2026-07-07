.class final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$setPassword$1$invokeSuspend$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "AccountPasswordFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$setPassword$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$setPassword$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$setPassword$1;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$setPassword$1;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$setPassword$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$setPassword$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$setPassword$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$setPassword$1;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment$setPassword$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method
