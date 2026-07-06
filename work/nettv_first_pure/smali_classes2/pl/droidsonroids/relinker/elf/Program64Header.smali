.class public Lpl/droidsonroids/relinker/elf/Program64Header;
.super Lpl/droidsonroids/relinker/elf/Elf$ProgramHeader;
.source "Program64Header.java"


# direct methods
.method public constructor <init>(Lpl/droidsonroids/relinker/elf/ElfParser;Lpl/droidsonroids/relinker/elf/Elf$Header;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lpl/droidsonroids/relinker/elf/Elf$ProgramHeader;-><init>()V

    const/16 v0, 0x8

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    iget-boolean v2, p2, Lpl/droidsonroids/relinker/elf/Elf$Header;->bigEndian:Z

    if-eqz v2, :cond_0

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    iget-wide v2, p2, Lpl/droidsonroids/relinker/elf/Elf$Header;->phoff:J

    iget p2, p2, Lpl/droidsonroids/relinker/elf/Elf$Header;->phentsize:I

    int-to-long v4, p2

    mul-long p3, p3, v4

    add-long/2addr p3, v2

    .line 5
    invoke-virtual {p1, v1, p3, p4}, Lpl/droidsonroids/relinker/elf/ElfParser;->readWord(Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    iput-wide v2, p0, Lpl/droidsonroids/relinker/elf/Elf$ProgramHeader;->type:J

    const-wide/16 v2, 0x8

    add-long/2addr v2, p3

    .line 6
    invoke-virtual {p1, v1, v2, v3, v0}, Lpl/droidsonroids/relinker/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 7
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 8
    iput-wide v2, p0, Lpl/droidsonroids/relinker/elf/Elf$ProgramHeader;->offset:J

    const-wide/16 v2, 0x10

    add-long/2addr v2, p3

    .line 9
    invoke-virtual {p1, v1, v2, v3, v0}, Lpl/droidsonroids/relinker/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 11
    iput-wide v2, p0, Lpl/droidsonroids/relinker/elf/Elf$ProgramHeader;->vaddr:J

    const-wide/16 v2, 0x28

    add-long/2addr p3, v2

    .line 12
    invoke-virtual {p1, v1, p3, p4, v0}, Lpl/droidsonroids/relinker/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 13
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    .line 14
    iput-wide p1, p0, Lpl/droidsonroids/relinker/elf/Elf$ProgramHeader;->memsz:J

    return-void
.end method
