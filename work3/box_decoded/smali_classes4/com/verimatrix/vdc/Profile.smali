.class public Lcom/verimatrix/vdc/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Profile"


# instance fields
.field private c:Landroid/content/Context;

.field private configuration:Lcom/verimatrix/vdc/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/verimatrix/vdc/Profile;->c:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/verimatrix/vdc/Profile;->configuration:Lcom/verimatrix/vdc/Configuration;

    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 57
    iget-object v0, p0, Lcom/verimatrix/vdc/Profile;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/Profile;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/verimatrix/vdc/Profile;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/Configuration;->getEncodeUserId()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/verimatrix/vdc/Profile;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/Configuration;->getUserIdEncoded()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/Profile;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/Configuration;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/verimatrix/vdc/Profile;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    invoke-static {p1, p2}, Lcom/verimatrix/vdc/InputValidator;->profileGet(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 71
    iget-object v3, p0, Lcom/verimatrix/vdc/Profile;->c:Landroid/content/Context;

    new-instance v4, Landroid/os/Messenger;

    new-instance v5, Lcom/verimatrix/vdc/Profile$1;

    invoke-direct {v5, p0, p2}, Lcom/verimatrix/vdc/Profile$1;-><init>(Lcom/verimatrix/vdc/Profile;Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;)V

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {v3, p1, v0, v1, v4}, Lcom/verimatrix/vdc/NetworkManager;->profileGet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    const-string p2, "listener: null"

    goto :goto_2

    :cond_3
    const-string p2, "listener"

    .line 87
    :goto_2
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v7

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_3
    if-eqz v2, :cond_4

    .line 90
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    goto :goto_4

    :cond_4
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    :goto_4
    return-object p1
.end method

.method set(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 29
    iget-object v1, v0, Lcom/verimatrix/vdc/Profile;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/Profile;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    new-array v10, v9, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "key:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "value:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x1

    aput-object v11, v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setType:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x2

    aput-object v11, v10, v16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dataType:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x3

    aput-object v11, v10, v17

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "privacyType:"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v18, 0x4

    aput-object v11, v10, v18

    invoke-static {v1, v7, v8, v10}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 34
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    iget-object v1, v0, Lcom/verimatrix/vdc/Profile;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Configuration;->getEncodeUserId()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, v0, Lcom/verimatrix/vdc/Profile;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Configuration;->getUserIdEncoded()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, v0, Lcom/verimatrix/vdc/Profile;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Configuration;->getUserId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p6

    .line 42
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    invoke-static/range {p1 .. p5}, Lcom/verimatrix/vdc/InputValidator;->profileSet(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_3

    .line 46
    iget-object v1, v0, Lcom/verimatrix/vdc/Profile;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v8

    .line 47
    iget-object v1, v0, Lcom/verimatrix/vdc/Profile;->c:Landroid/content/Context;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v8}, Lcom/verimatrix/vdc/NetworkManager;->profileSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 49
    :cond_3
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v7, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v18

    invoke-static {v1, v7}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_3
    if-eqz v10, :cond_4

    .line 53
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    :goto_4
    return-object v1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/verimatrix/vdc/Profile;->c:Landroid/content/Context;

    return-void
.end method
