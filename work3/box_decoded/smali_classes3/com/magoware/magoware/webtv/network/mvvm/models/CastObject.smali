.class public Lcom/magoware/magoware/webtv/network/mvvm/models/CastObject;
.super Ljava/lang/Object;
.source "CastObject.java"


# instance fields
.field private cast:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCast()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/models/CastObject;->cast:Ljava/util/List;

    return-object v0
.end method
