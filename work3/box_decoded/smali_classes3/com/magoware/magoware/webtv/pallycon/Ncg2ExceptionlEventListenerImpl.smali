.class public Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;
.super Ljava/lang/Object;
.source "Ncg2ExceptionlEventListenerImpl.java"

# interfaces
.implements Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Ncg2ExceptionEventListenerImpl"

.field private static mInstance:Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;


# instance fields
.field private mApiKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "51cfbe15"

    .line 12
    iput-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;->mApiKey:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;
    .locals 1

    .line 19
    sget-object v0, Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;->mInstance:Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;->mInstance:Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;

    .line 23
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;->mInstance:Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    return-void
.end method

.method public logException(Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ex"
        }
    .end annotation

    return-void
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiKey"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2ExceptionlEventListenerImpl;->mApiKey:Ljava/lang/String;

    return-void
.end method
