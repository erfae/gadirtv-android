.class public Lpl/droidsonroids/relinker/elf/Elf64Header;
.super Lpl/droidsonroids/relinker/elf/Elf$Header;
.source "Elf64Header.java"


# instance fields
.field private final parser:Lpl/droidsonroids/relinker/elf/ElfParser;


# direct methods
.method public constructor <init>(ZLpl/droidsonroids/relinker/elf/ElfParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lpl/droidsonroids/relinker/elf/Elf$Header;-><init>()V

    .line 2
    iput-boolean p1, p0, Lpl/droidsonroids/relinker/elf/Elf$Header;->bigEndian:Z

    .line 3
    iput-object p2, p0, Lpl/droidsonroids/relinker/elf/Elf64Header;->parser:Lpl/droidsonroids/relinker/elf/ElfParser;

    const/16 v0, 0x8

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz p1, :cond_12

    .line 5
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_14

    :cond_12
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_14
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x10

    .line 6
    invoke-virtual {p2, v1, v2, v3}, Lpl/droidsonroids/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/relinker/elf/Elf$Header;->type:I

    const-wide/16 v2, 0x20

    .line 7
    invoke-virtual {p2, v1, v2, v3, v0}, Lpl/droidsonroids/relinker/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 9
    iput-wide v2, p0, Lpl/droidsonroids/relinker/elf/Elf$Header;->phoff:J

    const-wide/16 v2, 0x28

    .line 10
    invoke-virtual {p2, v1, v2, v3, v0}, Lpl/droidsonroids/relinker/elf/ElfParser;->read(Ljava/nio/ByteBuffer;JI)V

    .line 11
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 12
    iput-wide v2, p0, Lpl/droidsonroids/relinker/elf/Elf$Header;->shoff:J

    const-wide/16 v2, 0x36

    .line 13
    invoke-virtual {p2, v1, v2, v3}, Lpl/droidsonroids/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/relinker/elf/Elf$Header;->phentsize:I

    const-wide/16 v2, 0x38

    .line 14
    invoke-virtual {p2, v1, v2, v3}, Lpl/droidsonroids/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/relinker/elf/Elf$Header;->phnum:I

    const-wide/16 v2, 0x3a

    .line 15
    invoke-virtual {p2, v1, v2, v3}, Lpl/droidsonroids/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/relinker/elf/Elf$Header;->shentsize:I

    const-wide/16 v2, 0x3c

    .line 16
    invoke-virtual {p2, v1, v2, v3}, Lpl/droidsonroids/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/relinker/elf/Elf$Header;->shnum:I

    const-wide/16 v2, 0x3e

    .line 17
    invoke-virtual {p2, v1, v2, v3}, Lpl/droidsonroids/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lpl/droidsonroids/relinker/elf/Elf$Header;->shstrndx:I

    return-void
.end method


# virtual methods
.method public getDynamicStructure(JI)Lpl/droidsonroids/relinker/elf/Elf$DynamicStructure;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lpl/droidsonroids/relinker/elf/Dynamic64Structure;

    iget-object v1, p0, Lpl/droidsonroids/relinker/elf/Elf64Header;->parser:Lpl/droidsonroids/relinker/elf/ElfParser;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lpl/droidsonroids/relinker/elf/Dynamic64Structure;-><init>(Lpl/droidsonroids/relinker/elf/ElfParser;Lpl/droidsonroids/relinker/elf/Elf$Header;JI)V

    return-object v6
.end method

.method public getProgramHeader(J)Lpl/droidsonroids/relinker/elf/Elf$ProgramHeader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lpl/droidsonroids/relinker/elf/Program64Header;

    iget-object v1, p0, Lpl/droidsonroids/relinker/elf/Elf64Header;->parser:Lpl/droidsonroids/relinker/elf/ElfParser;

    invoke-direct {v0, v1, p0, p1, p2}, Lpl/droidsonroids/relinker/elf/Program64Header;-><init>(Lpl/droidsonroids/relinker/elf/ElfParser;Lpl/droidsonroids/relinker/elf/Elf$Header;J)V

    return-object v0
.end method

.method public getSectionHeader(I)Lpl/droidsonroids/relinker/elf/Elf$SectionHeader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lpl/droidsonroids/relinker/elf/Section64Header;

    iget-object v1, p0, Lpl/droidsonroids/relinker/elf/Elf64Header;->parser:Lpl/droidsonroids/relinker/elf/ElfParser;

    invoke-direct {v0, v1, p0, p1}, Lpl/droidsonroids/relinker/elf/Section64Header;-><init>(Lpl/droidsonroids/relinker/elf/ElfParser;Lpl/droidsonroids/relinker/elf/Elf$Header;I)V

    return-object v0
.end method
