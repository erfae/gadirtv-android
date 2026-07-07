.class public abstract Lcom/inka/ncg/jni/HttpRequestJniCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mRegisteredCallback:Lcom/inka/ncg/jni/HttpRequestJniCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastErrorMsgStatic()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/inka/ncg/jni/HttpRequestJniCallback;->mRegisteredCallback:Lcom/inka/ncg/jni/HttpRequestJniCallback;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/HttpRequestJniCallback;->getLastErrorMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStatusCodeStatic()I
    .locals 1

    .line 31
    sget-object v0, Lcom/inka/ncg/jni/HttpRequestJniCallback;->mRegisteredCallback:Lcom/inka/ncg/jni/HttpRequestJniCallback;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/HttpRequestJniCallback;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public static getStatusMsgStatic()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/inka/ncg/jni/HttpRequestJniCallback;->mRegisteredCallback:Lcom/inka/ncg/jni/HttpRequestJniCallback;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/HttpRequestJniCallback;->getStatusMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendRequestResponseBytesStatic(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 26
    sget-object v0, Lcom/inka/ncg/jni/HttpRequestJniCallback;->mRegisteredCallback:Lcom/inka/ncg/jni/HttpRequestJniCallback;

    invoke-virtual {v0, p0, p1}, Lcom/inka/ncg/jni/HttpRequestJniCallback;->sendRequestResponseBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getLastErrorMsg()Ljava/lang/String;
.end method

.method public abstract getStatusCode()I
.end method

.method public abstract getStatusMsg()Ljava/lang/String;
.end method

.method public abstract sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sendRequestResponseBytes(Ljava/lang/String;Ljava/lang/String;)[B
.end method
