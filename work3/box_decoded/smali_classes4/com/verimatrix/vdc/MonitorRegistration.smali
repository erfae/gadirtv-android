.class Lcom/verimatrix/vdc/MonitorRegistration;
.super Ljava/lang/Object;
.source "MonitorRegistration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/MonitorRegistration$ResponseHandler;,
        Lcom/verimatrix/vdc/MonitorRegistration$RegState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MonitorRegistration"

.field private static currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState; = null

.field private static final visGPKSServerUrl:Ljava/lang/String; = "https://yliktfy0mk.execute-api.us-east-1.amazonaws.com/acceptance/gpks/1.0/guid/"


# instance fields
.field private agent:Lcom/verimatrix/vdc/MonitorAgent;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->NOT_REGISTERED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    sput-object v0, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    return-void
.end method

.method constructor <init>(Lcom/verimatrix/vdc/MonitorAgent;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->NOT_REGISTERED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    sput-object v0, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 60
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorRegistration;->agent:Lcom/verimatrix/vdc/MonitorAgent;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/verimatrix/vdc/MonitorRegistration$RegState;
    .locals 1

    .line 16
    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/verimatrix/vdc/MonitorRegistration$RegState;)Lcom/verimatrix/vdc/MonitorRegistration$RegState;
    .locals 0

    .line 16
    sput-object p0, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    return-object p0
.end method

.method private bindDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorAgent;->resetBindDeviceStatus()V

    .line 183
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorRegistration;->c:Landroid/content/Context;

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/verimatrix/vdc/MonitorRegistration$1;

    invoke-direct {v2, p0, p0}, Lcom/verimatrix/vdc/MonitorRegistration$1;-><init>(Lcom/verimatrix/vdc/MonitorRegistration;Lcom/verimatrix/vdc/MonitorRegistration;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v2, "https://yliktfy0mk.execute-api.us-east-1.amazonaws.com/acceptance/gpks/1.0/guid/"

    invoke-static {v0, p1, p2, v2, v1}, Lcom/verimatrix/vdc/NetworkManager;->bindDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    const/4 p1, 0x1

    return p1

    .line 178
    :cond_1
    :goto_0
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration;->TAG:Ljava/lang/String;

    const-string p2, "guid or jwtToken is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/verimatrix/vdc/MonitorAgent;->setBindDeviceStatus(I)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method SetGuid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 118
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->getValue()I

    move-result v1

    sget-object v2, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->REGISTRATION_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->getValue()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 119
    sget-object v1, Lcom/verimatrix/vdc/MonitorRegistration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid State . Please call registration api first"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_INIT_IN_PROGRESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    sput-object v1, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 124
    :try_start_0
    new-instance v1, Lcom/verimatrix/vdc/StoreFile;

    sget-object v2, Lcom/verimatrix/vdc/MonitorAgent;->storeFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/verimatrix/vdc/StoreFile;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "privKey"

    .line 126
    invoke-virtual {v1, v3, v2}, Lcom/verimatrix/vdc/StoreFile;->readField(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v3

    .line 127
    sget-object v4, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-ne v3, v4, :cond_5

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v3}, Lcom/verimatrix/vdc/RSACipherUtils;->decryptWithPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/RSAErrorCode;

    move-result-object p2

    .line 136
    sget-object v2, Lcom/verimatrix/vdc/RSAErrorCode;->OK:Lcom/verimatrix/vdc/RSAErrorCode;

    if-eq p2, v2, :cond_2

    .line 137
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration;->TAG:Ljava/lang/String;

    const-string p2, "Failed to decrypt authToken"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    sput-object p1, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    return v0

    :cond_2
    const-string p2, "guid"

    .line 154
    invoke-virtual {v1, p2, p1}, Lcom/verimatrix/vdc/StoreFile;->writeField(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object p2

    .line 155
    sget-object v2, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq p2, v2, :cond_3

    .line 156
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration;->TAG:Ljava/lang/String;

    const-string p2, "failed to store guid in store file"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    sput-object p1, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    return v0

    :cond_3
    const-string p2, "token"

    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/verimatrix/vdc/StoreFile;->writeField(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object p2

    .line 161
    sget-object v1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq p2, v1, :cond_4

    .line 162
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration;->TAG:Ljava/lang/String;

    const-string p2, "failed to store encrypted authToken in store file"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    sput-object p1, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    return v0

    .line 167
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/verimatrix/vdc/MonitorRegistration;->bindDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 128
    :cond_5
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration;->TAG:Ljava/lang/String;

    const-string p2, "failed to read private key from the store file"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->BIND_DEVICE_FAILED:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    sput-object p1, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    .line 113
    :cond_6
    :goto_0
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration;->TAG:Ljava/lang/String;

    const-string p2, "Invalid guid or jwt token"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method registration(Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 72
    sget-object v0, Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;->INVALID:Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 74
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration;->TAG:Ljava/lang/String;

    const-string p2, "key size is Invalid, so failed to generate CSR for this device"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_1
    iget-object p2, p0, Lcom/verimatrix/vdc/MonitorRegistration;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/verimatrix/vdc/MonitorUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 83
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 91
    :cond_2
    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->REGISTRATION_IN_PROGRESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    sput-object v0, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 93
    new-instance v0, Lcom/verimatrix/vdc/SecurityHelper;

    invoke-direct {v0}, Lcom/verimatrix/vdc/SecurityHelper;-><init>()V

    .line 94
    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/SecurityHelper;->GetCSRJsonObject(Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_3

    .line 95
    sget-object p2, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->REGISTRATION_FAILURE:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    sput-object p2, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 96
    sget-object p2, Lcom/verimatrix/vdc/MonitorRegistration;->TAG:Ljava/lang/String;

    const-string v0, "Register Device Failed to generate CSR = "

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 99
    :cond_3
    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration$RegState;->REGISTRATION_SUCCESS:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    sput-object v0, Lcom/verimatrix/vdc/MonitorRegistration;->currentState:Lcom/verimatrix/vdc/MonitorRegistration$RegState;

    .line 100
    sget-object v0, Lcom/verimatrix/vdc/MonitorRegistration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register Device with Hashed Device-ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 84
    :cond_4
    :goto_0
    sget-object p1, Lcom/verimatrix/vdc/MonitorRegistration;->TAG:Ljava/lang/String;

    const-string p2, "Device-Idis Invalid, so failed to generate CSR for this device"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorRegistration;->c:Landroid/content/Context;

    return-void
.end method
