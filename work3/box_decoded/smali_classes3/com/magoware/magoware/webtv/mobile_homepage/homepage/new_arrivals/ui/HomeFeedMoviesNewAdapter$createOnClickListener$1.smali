.class final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$createOnClickListener$1;
.super Ljava/lang/Object;
.source "HomeFeedMoviesNewAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;->createOnClickListener(I)Landroid/view/View$OnClickListener;
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
.field final synthetic $id:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$createOnClickListener$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;

    iput p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$createOnClickListener$1;->$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$createOnClickListener$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$createOnClickListener$1;->$id:I

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;->access$intentVod(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter$createOnClickListener$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMoviesNewAdapter;->getListener()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;->showLoginDialog()V

    :goto_0
    return-void
.end method
