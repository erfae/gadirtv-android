.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$VrHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;,
        Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

.field public view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->clear()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    return-void
.end method

.method public static checkStepOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum Step"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    .locals 1

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    .locals 2

    .line 12
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 15
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

    .line 48
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

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

    .line 49
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

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

    .line 51
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 27
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 30
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 33
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 38
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    if-nez v0, :cond_4

    .line 41
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    .line 42
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

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

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

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

    .line 21
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->view:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->stepStateChange:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$StepStateChange;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 25
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
