.class public final Lcom/magoware/magoware/webtv/api/ResponseObject;
.super Ljava/lang/Object;
.source "ResponseObject.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B;\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0018\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\nH\u00c6\u0003J\u000f\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u00c6\u0003JQ\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0004H\u00d6\u0001J\t\u0010#\u001a\u00020\u0007H\u00d6\u0001R\u0016\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u001c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000fR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006$"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/api/ResponseObject;",
        "T",
        "",
        "statusCode",
        "",
        "errorCode",
        "errorDescription",
        "",
        "extraData",
        "timestamp",
        "",
        "response_object",
        "",
        "(IILjava/lang/String;Ljava/lang/String;JLjava/util/List;)V",
        "getErrorCode",
        "()I",
        "getErrorDescription",
        "()Ljava/lang/String;",
        "getExtraData",
        "getResponse_object",
        "()Ljava/util/List;",
        "getStatusCode",
        "getTimestamp",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final errorCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_code"
    .end annotation
.end field

.field private final errorDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_description"
    .end annotation
.end field

.field private final extraData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extra_data"
    .end annotation
.end field

.field private final response_object:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_object"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final statusCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_code"
    .end annotation
.end field

.field private final timestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "errorDescription"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response_object"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->statusCode:I

    iput p2, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorCode:I

    iput-object p3, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorDescription:Ljava/lang/String;

    iput-object p4, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->extraData:Ljava/lang/String;

    iput-wide p5, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->timestamp:J

    iput-object p7, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->response_object:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/magoware/magoware/webtv/api/ResponseObject;IILjava/lang/String;Ljava/lang/String;JLjava/util/List;ILjava/lang/Object;)Lcom/magoware/magoware/webtv/api/ResponseObject;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->statusCode:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorCode:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorDescription:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->extraData:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->timestamp:J

    :cond_4
    move-wide v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p7, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->response_object:Ljava/util/List;

    :cond_5
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move-object p5, v0

    move-object p6, v1

    move-wide p7, v2

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/magoware/magoware/webtv/api/ResponseObject;->copy(IILjava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/magoware/magoware/webtv/api/ResponseObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->statusCode:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorCode:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->extraData:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->timestamp:J

    return-wide v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->response_object:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IILjava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/magoware/magoware/webtv/api/ResponseObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "+TT;>;)",
            "Lcom/magoware/magoware/webtv/api/ResponseObject<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorDescription"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraData"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response_object"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/magoware/magoware/webtv/api/ResponseObject;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/magoware/magoware/webtv/api/ResponseObject;-><init>(IILjava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/magoware/magoware/webtv/api/ResponseObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/magoware/magoware/webtv/api/ResponseObject;

    iget v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->statusCode:I

    iget v1, p1, Lcom/magoware/magoware/webtv/api/ResponseObject;->statusCode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorCode:I

    iget v1, p1, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorCode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorDescription:Ljava/lang/String;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->extraData:Ljava/lang/String;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/api/ResponseObject;->extraData:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->timestamp:J

    iget-wide v2, p1, Lcom/magoware/magoware/webtv/api/ResponseObject;->timestamp:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->response_object:Ljava/util/List;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/api/ResponseObject;->response_object:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getErrorCode()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorCode:I

    return v0
.end method

.method public final getErrorDescription()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtraData()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->extraData:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponse_object()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->response_object:Ljava/util/List;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->statusCode:I

    return v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->statusCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorDescription:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->extraData:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->timestamp:J

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/api/ResponseObject-$$ExternalSynthetic0;->m0(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->response_object:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponseObject(statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->errorDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->extraData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", response_object="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/api/ResponseObject;->response_object:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
