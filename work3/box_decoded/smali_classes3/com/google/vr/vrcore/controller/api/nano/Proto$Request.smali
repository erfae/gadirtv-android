.class public final Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;


# instance fields
.field public vibration:Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->clear()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    .line 4
    sput-object v1, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->_emptyArray:[Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->vibration:Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    .line 11
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->cachedSize:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->clone()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

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

    .line 42
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->clone()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;
    .locals 2

    .line 14
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->vibration:Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->clone()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->vibration:Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->clone()Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 25
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->vibration:Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 28
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 33
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->vibration:Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    if-nez v0, :cond_2

    .line 36
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;-><init>()V

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->vibration:Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->vibration:Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->vibration:Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 23
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
