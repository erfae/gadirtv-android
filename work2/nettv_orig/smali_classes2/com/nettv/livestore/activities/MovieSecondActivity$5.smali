.class Lcom/nettv/livestore/activities/MovieSecondActivity$5;
.super Ljava/lang/Object;
.source "MovieSecondActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/MovieSecondActivity;->showMovieLockDlgFragment(Lcom/nettv/livestore/models/MovieModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

.field public final synthetic val$movieModel:Lcom/nettv/livestore/models/MovieModel;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/MovieSecondActivity;ILcom/nettv/livestore/models/MovieModel;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iput-object p3, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->val$movieModel:Lcom/nettv/livestore/models/MovieModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPinCorrect()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    const-class v2, Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->val$movieModel:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieModel;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->val$movieModel:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stream_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget-object v1, v1, Lcom/nettv/livestore/activities/MovieSecondActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v1

    const-string v2, "category_name"

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->val$movieModel:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieModel;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget-object v3, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->val$movieModel:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/MovieModel;->getCategory_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nettv/livestore/activities/MovieSecondActivity;->access$300(Lcom/nettv/livestore/activities/MovieSecondActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public OnPinIncorrect()V
    .locals 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/MovieSecondActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

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

    iget-object v0, p0, Lcom/nettv/livestore/activities/MovieSecondActivity$5;->this$0:Lcom/nettv/livestore/activities/MovieSecondActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/MovieSecondActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
