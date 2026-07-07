.class public Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessage;
.super Ljava/lang/Object;
.source "WelcomeMessage.java"


# instance fields
.field private welcomeMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "welcomeMessage"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWelcomeMessage()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessage;->welcomeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setWelcomeMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "welcomeMessage"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessage;->welcomeMessage:Ljava/lang/String;

    return-void
.end method
