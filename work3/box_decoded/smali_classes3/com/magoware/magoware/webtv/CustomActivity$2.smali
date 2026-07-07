.class Lcom/magoware/magoware/webtv/CustomActivity$2;
.super Ljava/lang/Object;
.source "CustomActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/CustomActivity;->hideNavigationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/CustomActivity;

.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$uiOptions:I


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/CustomActivity;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$decorView",
            "val$uiOptions"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/magoware/magoware/webtv/CustomActivity$2;->this$0:Lcom/magoware/magoware/webtv/CustomActivity;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/CustomActivity$2;->val$decorView:Landroid/view/View;

    iput p3, p0, Lcom/magoware/magoware/webtv/CustomActivity$2;->val$uiOptions:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 78
    iget-object p1, p0, Lcom/magoware/magoware/webtv/CustomActivity$2;->val$decorView:Landroid/view/View;

    iget v0, p0, Lcom/magoware/magoware/webtv/CustomActivity$2;->val$uiOptions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
