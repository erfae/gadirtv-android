.class Lcom/verimatrix/vdc/MonitorRegistration$1;
.super Lcom/verimatrix/vdc/MonitorRegistration$ResponseHandler;
.source "MonitorRegistration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/MonitorRegistration;->bindDevice(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/MonitorRegistration;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/MonitorRegistration;Lcom/verimatrix/vdc/MonitorRegistration;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorRegistration$1;->this$0:Lcom/verimatrix/vdc/MonitorRegistration;

    invoke-direct {p0, p2}, Lcom/verimatrix/vdc/MonitorRegistration$ResponseHandler;-><init>(Lcom/verimatrix/vdc/MonitorRegistration;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const-string v0, "statusMessage"

    const-string v1, "statusCode"

    const-string v2, "consentLevel"

    const-string v3, "iuid"

    const-string v4, "certificate"

    const-string v5, "key"

    const-string v6, "bindDevice: "

    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 187
    :try_start_0
    iget-object v9, p0, Lcom/verimatrix/vdc/MonitorRegistration$1;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    .line 188
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bindDevice response not recieved"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_0

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_0
    return-void

    .line 192
    :cond_1
    :try_start_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, "Error in response of bindDevice"

    if-nez v9, :cond_3

    .line 193
    :try_start_2
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 194
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_2

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_1

    .line 291
    :cond_2
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_1
    return-void

    .line 197
    :cond_3
    :try_start_3
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_22

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_22

    .line 199
    :try_start_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    if-nez p1, :cond_5

    .line 201
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 202
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_4

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_2

    .line 291
    :cond_4
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_2
    return-void

    .line 209
    :cond_5
    :try_start_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto/16 :goto_11

    :cond_6
    const-string v9, "SUCCESS"

    .line 214
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 215
    sget-object v1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {v1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    const-string v1, ""

    .line 217
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 218
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_7
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_8

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_3

    .line 291
    :cond_8
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_3
    return-void

    .line 224
    :cond_9
    :try_start_6
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_f

    .line 229
    :cond_a
    new-instance v1, Lcom/verimatrix/vdc/StoreFile;

    sget-object v9, Lcom/verimatrix/vdc/MonitorAgent;->storeFilePath:Ljava/lang/String;

    invoke-direct {v1, v9}, Lcom/verimatrix/vdc/StoreFile;-><init>(Ljava/lang/String;)V

    .line 230
    sget-object v9, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 231
    invoke-virtual {v1, v4, v0}, Lcom/verimatrix/vdc/StoreFile;->writeField(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v0

    sget-object v4, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v9, "Error in storing certificate in store file"

    if-eq v0, v4, :cond_c

    .line 232
    :try_start_7
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 233
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_b

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_4

    .line 291
    :cond_b
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_4
    return-void

    .line 237
    :cond_c
    :try_start_8
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    goto/16 :goto_d

    .line 242
    :cond_d
    invoke-virtual {v1, v3, v0}, Lcom/verimatrix/vdc/StoreFile;->writeField(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v0

    sget-object v3, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v0, v3, :cond_f

    .line 243
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 244
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_e

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_5

    .line 291
    :cond_e
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_5
    return-void

    .line 248
    :cond_f
    :try_start_9
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    goto/16 :goto_b

    .line 253
    :cond_10
    invoke-virtual {v1, v5, v0}, Lcom/verimatrix/vdc/StoreFile;->writeField(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v0

    sget-object v3, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v0, v3, :cond_12

    .line 254
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 255
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in storing privacy key in store file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_11

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_6

    .line 291
    :cond_11
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_6
    return-void

    .line 258
    :cond_12
    :try_start_a
    sget-object v0, Lcom/verimatrix/vdc/DynamicConfiguration;->LEGACY_VRT_SERVER_FLAG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 259
    invoke-static {}, Lcom/verimatrix/vdc/AESCryptoUtils;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/verimatrix/vdc/StoreFile;->writeField(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v0

    sget-object v3, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v0, v3, :cond_14

    .line 261
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 262
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in storing spk in store file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_13

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_7

    .line 291
    :cond_13
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_7
    return-void

    .line 268
    :cond_14
    :try_start_b
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_9

    .line 273
    :cond_15
    invoke-virtual {v1, v2, p1}, Lcom/verimatrix/vdc/StoreFile;->writeField(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq p1, v0, :cond_17

    .line 274
    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 275
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_16

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_8

    .line 291
    :cond_16
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_8
    return-void

    .line 278
    :cond_17
    :try_start_c
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    goto/16 :goto_13

    .line 269
    :cond_18
    :goto_9
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 270
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "consetLevel field not available in bindDevice response"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_19

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_a

    .line 291
    :cond_19
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_a
    return-void

    .line 249
    :cond_1a
    :goto_b
    :try_start_d
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 250
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "privacy key field not available in bindDevice response"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_1b

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_c

    .line 291
    :cond_1b
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_c
    return-void

    .line 238
    :cond_1c
    :goto_d
    :try_start_e
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 239
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "iuid field not available in bindDevice response"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_1d

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_e

    .line 291
    :cond_1d
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_e
    return-void

    .line 225
    :cond_1e
    :goto_f
    :try_start_f
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 226
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "certifcate not available in bindDevice response"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_1f

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_10

    .line 291
    :cond_1f
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_10
    return-void

    .line 210
    :cond_20
    :goto_11
    :try_start_10
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 211
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_21

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_12

    .line 291
    :cond_21
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_12
    return-void

    :catch_0
    move-exception p1

    .line 280
    :try_start_11
    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorRegistration;->access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 281
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 287
    :cond_22
    :goto_13
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_23

    goto :goto_14

    :catchall_0
    move-exception p1

    goto :goto_16

    :catch_1
    move-exception p1

    .line 285
    :try_start_12
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 287
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object p1

    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne p1, v0, :cond_23

    .line 289
    :goto_14
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_15

    .line 291
    :cond_23
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_15
    return-void

    .line 287
    :goto_16
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/verimatrix/vdc/MonitorRegistration;->access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    move-result-object v0

    sget-object v1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DIVCE_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    if-ne v0, v1, :cond_24

    .line 289
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    goto :goto_17

    .line 291
    :cond_24
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    :goto_17
    throw p1
.end method
