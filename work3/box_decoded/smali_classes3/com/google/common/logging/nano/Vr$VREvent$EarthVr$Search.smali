.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Search"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public searchQuery:Ljava/lang/String;

.field public selectedEntityIndex:Ljava/lang/Integer;

.field public selectedEntityView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

.field public typedQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->clear()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->typedQuery:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->searchQuery:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->selectedEntityIndex:Ljava/lang/Integer;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->selectedEntityView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;
    .locals 2

    .line 11
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->selectedEntityView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->selectedEntityView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 14
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

    .line 57
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

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

    .line 58
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

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

    .line 60
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 28
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 29
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->typedQuery:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 31
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->searchQuery:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 34
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->selectedEntityIndex:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->selectedEntityView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 40
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 45
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->selectedEntityView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-nez v0, :cond_2

    .line 54
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->selectedEntityView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->selectedEntityView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->selectedEntityIndex:Ljava/lang/Integer;

    goto :goto_0

    .line 49
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->searchQuery:Ljava/lang/String;

    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->typedQuery:Ljava/lang/String;

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

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
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->typedQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->selectedEntityIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->selectedEntityView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 26
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
