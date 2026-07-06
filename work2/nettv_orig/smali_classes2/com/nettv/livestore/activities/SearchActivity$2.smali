.class Lcom/nettv/livestore/activities/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/SearchActivity;->showLockDlgFragment(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/SearchActivity;

.field public final synthetic val$movie_name:Ljava/lang/String;

.field public final synthetic val$stream_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/SearchActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/SearchActivity$2;->this$0:Lcom/nettv/livestore/activities/SearchActivity;

    iput-object p2, p0, Lcom/nettv/livestore/activities/SearchActivity$2;->val$movie_name:Ljava/lang/String;

    iput-object p3, p0, Lcom/nettv/livestore/activities/SearchActivity$2;->val$stream_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPinCorrect()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nettv/livestore/activities/SearchActivity$2;->this$0:Lcom/nettv/livestore/activities/SearchActivity;

    const-class v2, Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/activities/SearchActivity$2;->val$movie_name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/nettv/livestore/activities/SearchActivity$2;->val$stream_id:Ljava/lang/String;

    const-string v2, "stream_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/SearchActivity$2;->this$0:Lcom/nettv/livestore/activities/SearchActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public OnPinIncorrect()V
    .locals 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$2;->this$0:Lcom/nettv/livestore/activities/SearchActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/SearchActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPin_incorrect()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public OnPutPinCode()V
    .locals 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/SearchActivity$2;->this$0:Lcom/nettv/livestore/activities/SearchActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/SearchActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
