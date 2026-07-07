.class Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "SmartTvMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;->setMenuBackgroundImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;

.field final synthetic val$frag:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$frag"
        }
    .end annotation

    .line 952
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment$1;->this$0:Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment$1;->val$frag:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resource",
            "transition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 955
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment$1;->val$frag:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "resource",
            "transition"
        }
    .end annotation

    .line 952
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/smartv/SmartTvMainFragment$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
