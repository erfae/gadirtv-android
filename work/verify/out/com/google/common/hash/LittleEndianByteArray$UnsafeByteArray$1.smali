.class final enum Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$1;
.super Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "UNSAFE_LITTLE_ENDIAN"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;-><init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray$1;)V

    return-void
.end method


# virtual methods
.method public getLongLittleEndian([BI)J
    .registers 8

    # getter for: Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->theUnsafe:Lsun/misc/Unsafe;
    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->access$200()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    # getter for: Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->BYTE_ARRAY_BASE_OFFSET:I
    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->access$100()I

    move-result p2

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public putLongLittleEndian([BIJ)V
    .registers 11

    # getter for: Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->theUnsafe:Lsun/misc/Unsafe;
    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->access$200()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    # getter for: Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->BYTE_ARRAY_BASE_OFFSET:I
    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->access$100()I

    move-result p2

    int-to-long v3, p2

    add-long v2, v1, v3

    move-object v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method
