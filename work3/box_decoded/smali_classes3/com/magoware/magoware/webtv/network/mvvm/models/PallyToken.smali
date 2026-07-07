.class public Lcom/magoware/magoware/webtv/network/mvvm/models/PallyToken;
.super Ljava/lang/Object;
.source "PallyToken.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "base64Token"
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
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/PallyToken;->token:Ljava/lang/String;

    return-object v0
.end method
