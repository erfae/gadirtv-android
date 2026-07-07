.class public final Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyboardEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;


# instance fields
.field public clientTimestamp:Ljava/lang/Long;

.field public enabledLanguages:[Ljava/lang/String;

.field public eventType:Ljava/lang/Integer;

.field public inputType:Ljava/lang/Integer;

.field public keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field public language:Ljava/lang/String;

.field public layout:Ljava/lang/String;

.field public suggestionCount:Ljava/lang/Integer;

.field public systemLanguages:[Ljava/lang/String;

.field public textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

.field public voiceInputLanguages:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    .line 4
    sput-object v1, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

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
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .locals 2

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    .line 13
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 14
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    .line 15
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    .line 18
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    .line 20
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->voiceInputLanguages:[Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .locals 3

    .line 24
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 33
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    .line 34
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    .line 35
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->voiceInputLanguages:[Ljava/lang/String;

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    .line 37
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->voiceInputLanguages:[Ljava/lang/String;

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    .line 27
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

    .line 211
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

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

    .line 212
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

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

    .line 214
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 8

    .line 75
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    .line 84
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    .line 87
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 91
    :goto_0
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_5

    .line 92
    aget-object v6, v6, v1

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 96
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    add-int/2addr v0, v4

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    .line 100
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 103
    :goto_1
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_8

    .line 104
    aget-object v6, v6, v1

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 108
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    add-int/2addr v0, v4

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    .line 112
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/4 v4, 0x7

    .line 114
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/16 v4, 0x8

    .line 117
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    if-eqz v1, :cond_c

    const/16 v4, 0x9

    .line 120
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v4, 0xa

    .line 123
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->voiceInputLanguages:[Ljava/lang/String;

    if-eqz v1, :cond_10

    array-length v1, v1

    if-lez v1, :cond_10

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 127
    :goto_2
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->voiceInputLanguages:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_f

    .line 128
    aget-object v5, v5, v3

    if-eqz v5, :cond_e

    add-int/lit8 v4, v4, 0x1

    .line 132
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_f
    add-int/2addr v0, v1

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_10
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 140
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x5a

    .line 199
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 200
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->voiceInputLanguages:[Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    array-length v3, v2

    :goto_1
    add-int/2addr v0, v3

    .line 201
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 203
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    .line 205
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 206
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 208
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 209
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->voiceInputLanguages:[Ljava/lang/String;

    goto :goto_0

    .line 196
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    goto :goto_0

    .line 194
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    goto :goto_0

    .line 187
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 188
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->checkKeyboardInputTypeOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 192
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 185
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x32

    .line 173
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 174
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    array-length v3, v2

    :goto_3
    add-int/2addr v0, v3

    .line 175
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 177
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_6

    .line 179
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 180
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 182
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 183
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x2a

    .line 160
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 161
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    if-nez v2, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    array-length v3, v2

    :goto_5
    add-int/2addr v0, v3

    .line 162
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 164
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_9

    .line 166
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 167
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 169
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 170
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    goto/16 :goto_0

    .line 155
    :sswitch_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v0, :cond_a

    .line 156
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 157
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 151
    :sswitch_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    if-nez v0, :cond_b

    .line 152
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    .line 153
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 144
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 145
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->checkKeyboardEventTypeOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 148
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 142
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_b
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x1a -> :sswitch_8
        0x22 -> :sswitch_7
        0x2a -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x40 -> :sswitch_3
        0x4a -> :sswitch_2
        0x50 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 49
    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/4 v3, 0x5

    .line 51
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    .line 54
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_7

    .line 55
    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    const/4 v3, 0x6

    .line 57
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v2, 0x7

    .line 60
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 61
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    const/16 v2, 0x8

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 63
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/16 v2, 0x9

    .line 64
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 65
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const/16 v2, 0xa

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 67
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->voiceInputLanguages:[Ljava/lang/String;

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    .line 68
    :goto_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->voiceInputLanguages:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_d

    .line 69
    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    const/16 v2, 0xb

    .line 71
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
