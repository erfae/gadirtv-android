.class public Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessageResponse;
.super Ljava/lang/Object;
.source "WelcomeMessageResponse.java"


# instance fields
.field status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_code"
    .end annotation
.end field

.field welcomeMessages:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_object"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessageResponse;->status:I

    return v0
.end method

.method public getWelcomeMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessage;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessageResponse;->welcomeMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 22
    iput p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessageResponse;->status:I

    return-void
.end method
