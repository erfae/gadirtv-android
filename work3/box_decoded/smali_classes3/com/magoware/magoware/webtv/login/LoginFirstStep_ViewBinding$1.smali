.class Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LoginFirstStep_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/login/LoginFirstStep;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding;

.field final synthetic val$target:Lcom/magoware/magoware/webtv/login/LoginFirstStep;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding;Lcom/magoware/magoware/webtv/login/LoginFirstStep;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$target"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding$1;->val$target:Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p0"
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep_ViewBinding$1;->val$target:Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->onNextClick()V

    return-void
.end method
