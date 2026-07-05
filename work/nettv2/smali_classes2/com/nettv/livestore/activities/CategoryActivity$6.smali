.class Lcom/nettv/livestore/activities/CategoryActivity$6;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/LockDlgFragment$OnPinEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/CategoryActivity;->showLockDlgFragment(Lcom/nettv/livestore/models/CategoryModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/CategoryActivity;

.field public final synthetic val$categoryModel:Lcom/nettv/livestore/models/CategoryModel;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/CategoryActivity;Lcom/nettv/livestore/models/CategoryModel;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    iput-object p2, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->val$categoryModel:Lcom/nettv/livestore/models/CategoryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPinCorrect()V
    .locals 5

    .line 1
    sget-object v0, Lcom/nettv/livestore/activities/CategoryActivity$7;->$SwitchMap$com$vilhao$player$apps$HomeType:[I

    sget-object v1, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "category_pos"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/CategoryActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v2, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->val$categoryModel:Lcom/nettv/livestore/models/CategoryModel;

    invoke-static {v0, v2}, Lcom/nettv/livestore/activities/CategoryActivity;->access$300(Lcom/nettv/livestore/activities/CategoryActivity;Lcom/nettv/livestore/models/CategoryModel;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceCategoryPos(I)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    invoke-static {v0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "is_full"

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    const-class v4, Lcom/nettv/livestore/activities/LiveChannelActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    iget-object v1, v1, Lcom/nettv/livestore/activities/CategoryActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    const-class v4, Lcom/nettv/livestore/activities/mobile/LiveChannelMobileActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    iget-object v1, v1, Lcom/nettv/livestore/activities/CategoryActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    const-class v3, Lcom/nettv/livestore/activities/SeriesSecondActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    iget-object v3, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->val$categoryModel:Lcom/nettv/livestore/models/CategoryModel;

    invoke-static {v1, v3}, Lcom/nettv/livestore/activities/CategoryActivity;->access$300(Lcom/nettv/livestore/activities/CategoryActivity;Lcom/nettv/livestore/models/CategoryModel;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    iget-object v1, v1, Lcom/nettv/livestore/activities/CategoryActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    const-class v3, Lcom/nettv/livestore/activities/MovieSecondActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    iget-object v3, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->val$categoryModel:Lcom/nettv/livestore/models/CategoryModel;

    invoke-static {v1, v3}, Lcom/nettv/livestore/activities/CategoryActivity;->access$300(Lcom/nettv/livestore/activities/CategoryActivity;Lcom/nettv/livestore/models/CategoryModel;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    iget-object v1, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    iget-object v1, v1, Lcom/nettv/livestore/activities/CategoryActivity;->someActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public OnPinIncorrect()V
    .locals 3

    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/CategoryActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

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

    iget-object v0, p0, Lcom/nettv/livestore/activities/CategoryActivity$6;->this$0:Lcom/nettv/livestore/activities/CategoryActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/CategoryActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPut_pin_code()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
