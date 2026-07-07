.class public final Lcom/google/common/logging/nano/Vr$VREvent$StreetView;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreetView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;,
        Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$StreetView;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

.field public tutorialSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->clear()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->tutorialSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;
    .locals 2

    .line 9
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->tutorialSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->tutorialSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 24
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 27
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->tutorialSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 30
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$StreetView;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 35
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->tutorialSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;

    if-nez v0, :cond_2

    .line 42
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->tutorialSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->tutorialSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    if-nez v0, :cond_4

    .line 38
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    .line 39
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->panoSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$PanoSession;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->tutorialSession:Lcom/google/common/logging/nano/Vr$VREvent$StreetView$TutorialSession;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 22
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
