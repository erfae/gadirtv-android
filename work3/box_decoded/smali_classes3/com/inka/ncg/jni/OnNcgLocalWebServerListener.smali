.class public abstract Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mListener:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onCheckPlayerStatusCallback(Ljava/lang/String;)Z
    .locals 1

    .line 54
    sget-object v0, Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;->mListener:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

    invoke-virtual {v0, p0}, Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;->onCheckPlayerStatus(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static onErrorCallback(ILjava/lang/String;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;->mListener:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

    invoke-virtual {v0, p0, p1}, Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static onNotificationCallback(ILjava/lang/String;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;->mListener:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

    invoke-virtual {v0, p0, p1}, Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;->onNotification(ILjava/lang/String;)V

    return-void
.end method

.method public static setOnNcgLocalWebServerListener(Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;)V
    .locals 0

    .line 21
    sput-object p0, Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;->mListener:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

    return-void
.end method


# virtual methods
.method public abstract onCheckPlayerStatus(Ljava/lang/String;)Z
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onNotification(ILjava/lang/String;)V
.end method
