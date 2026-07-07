.class Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;
.super Ljava/lang/Object;
.source "CatchUpRuler.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/JSONObjectRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getCathUpEpg(IILandroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

.field final synthetic val$focusButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$focusButton"
        }
    .end annotation

    .line 565
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->val$focusButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/androidnetworking/error/ANError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 641
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->access$100(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 568
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 569
    new-instance v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1$1;

    invoke-direct {v2, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1$1;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;)V

    .line 570
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 572
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    if-eqz v1, :cond_9

    .line 575
    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v3, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->val$focusButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setFocusClicked(Landroid/widget/Button;)V

    .line 576
    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    const/4 v3, 0x0

    iput v3, v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->k:I

    .line 577
    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v4, v1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->epgTotal:I

    .line 578
    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    .line 579
    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget v2, v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->epgTotal:I

    if-nez v2, :cond_0

    .line 580
    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startPx:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 581
    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->endPx:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v2, 0x0

    .line 583
    :goto_0
    iget-object v4, v1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 584
    iget-object v4, v1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;

    const/4 v5, 0x1

    if-le v2, v5, :cond_1

    .line 586
    iget-object v6, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v7, v1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;

    invoke-static {v6, v7, v4}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->access$000(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_3

    .line 591
    :cond_1
    iget-object v6, v4, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->programstart:Ljava/lang/String;

    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 592
    iget-object v8, v4, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->programend:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 595
    array-length v8, v6

    if-eq v8, v5, :cond_4

    .line 596
    aget-object v8, v6, v3

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 597
    aget-object v8, v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 598
    aget-object v6, v6, v5

    const-string v8, ":"

    .line 599
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 600
    aget-object v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x18

    if-nez v9, :cond_2

    const/16 v11, 0x18

    goto :goto_1

    .line 603
    :cond_2
    aget-object v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v11, v9

    .line 605
    :goto_1
    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 608
    aget-object v6, v7, v5

    .line 609
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 610
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_3

    const/16 v13, 0x18

    goto :goto_2

    .line 613
    :cond_3
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v13, v7

    .line 615
    :goto_2
    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 616
    iget-object v9, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v15, v4, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->id:I

    iget-object v5, v4, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->duration:Ljava/lang/String;

    .line 617
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;->description:Ljava/lang/String;

    move-object/from16 v17, v4

    .line 616
    invoke-virtual/range {v9 .. v18}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->setPositionOfButton(Ljava/lang/String;IIIIIILjava/lang/String;I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 622
    :cond_5
    :goto_3
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->fromEPG:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 623
    :goto_4
    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 624
    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/magoware/magoware/webtv/players/epg/big_screen/ScheduleEpgFragmentDialog;->program_ID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 625
    iget-object v2, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->listOfSelectedDayButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    .line 626
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 627
    :cond_6
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->goToLive:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 633
    :cond_8
    :goto_5
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iput-boolean v3, v1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->leftMostButton:Z

    .line 635
    :cond_9
    iget-object v1, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->access$100(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V

    return-void
.end method
