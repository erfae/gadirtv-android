.class public final Lcom/google/common/io/FileBackedOutputStream;
.super Ljava/io/OutputStream;
.source "FileBackedOutputStream.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;
    }
.end annotation


# instance fields
.field private file:Ljava/io/File;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final fileThreshold:I

.field private memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private out:Ljava/io/OutputStream;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final parentDirectory:Ljava/io/File;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final resetOnFinalize:Z

.field private final source:Lcom/google/common/io/ByteSource;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/common/io/FileBackedOutputStream;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/FileBackedOutputStream;-><init>(IZLjava/io/File;)V

    return-void
.end method

.method private constructor <init>(IZLjava/io/File;)V
    .registers 4
    .param p3    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/common/io/FileBackedOutputStream;->fileThreshold:I

    .line 5
    iput-boolean p2, p0, Lcom/google/common/io/FileBackedOutputStream;->resetOnFinalize:Z

    .line 6
    iput-object p3, p0, Lcom/google/common/io/FileBackedOutputStream;->parentDirectory:Ljava/io/File;

    .line 7
    new-instance p1, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;-><init>(Lcom/google/common/io/FileBackedOutputStream$1;)V

    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    .line 8
    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    if-eqz p2, :cond_1d

    .line 9
    new-instance p1, Lcom/google/common/io/FileBackedOutputStream$1;

    invoke-direct {p1, p0}, Lcom/google/common/io/FileBackedOutputStream$1;-><init>(Lcom/google/common/io/FileBackedOutputStream;)V

    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream;->source:Lcom/google/common/io/ByteSource;

    goto :goto_24

    .line 10
    :cond_1d
    new-instance p1, Lcom/google/common/io/FileBackedOutputStream$2;

    invoke-direct {p1, p0}, Lcom/google/common/io/FileBackedOutputStream$2;-><init>(Lcom/google/common/io/FileBackedOutputStream;)V

    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream;->source:Lcom/google/common/io/ByteSource;

    :goto_24
    return-void
.end method

.method public static synthetic access$100(Lcom/google/common/io/FileBackedOutputStream;)Ljava/io/InputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/io/FileBackedOutputStream;->openInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized openInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    if-eqz v0, :cond_e

    .line 2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_27

    monitor-exit p0

    return-object v0

    .line 3
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-virtual {v1}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-virtual {v3}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->getCount()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_27

    monitor-exit p0

    return-object v0

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private update(I)V
    .registers 7
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->getCount()I

    move-result v0

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/common/io/FileBackedOutputStream;->fileThreshold:I

    if-le v0, p1, :cond_41

    .line 2
    iget-object p1, p0, Lcom/google/common/io/FileBackedOutputStream;->parentDirectory:Ljava/io/File;

    const-string v0, "FileBackedOutputStream"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 3
    iget-boolean v0, p0, Lcom/google/common/io/FileBackedOutputStream;->resetOnFinalize:Z

    if-eqz v0, :cond_1d

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    .line 5
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6
    iget-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-virtual {v2}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->getBuffer()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-virtual {v4}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->getCount()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 8
    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_37} :catch_3c

    .line 9
    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    .line 10
    iput-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    goto :goto_41

    :catch_3c
    move-exception v0

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 12
    throw v0

    :cond_41
    :goto_41
    return-void
.end method


# virtual methods
.method public asByteSource()Lcom/google/common/io/ByteSource;
    .registers 2

    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->source:Lcom/google/common/io/ByteSource;

    return-object v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/io/FileBackedOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_4a

    .line 2
    :try_start_5
    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    if-nez v1, :cond_11

    .line 3
    new-instance v1, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-direct {v1, v0}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;-><init>(Lcom/google/common/io/FileBackedOutputStream$1;)V

    iput-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    goto :goto_14

    .line 4
    :cond_11
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 5
    :goto_14
    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    iput-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    .line 6
    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    if-eqz v1, :cond_46

    .line 7
    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_46

    .line 9
    :cond_25
    new-instance v0, Ljava/io/IOException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not delete: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_48

    .line 10
    :cond_46
    :goto_46
    monitor-exit p0

    return-void

    :catchall_48
    move-exception v0

    goto :goto_8e

    :catchall_4a
    move-exception v1

    .line 11
    :try_start_4b
    iget-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    if-nez v2, :cond_57

    .line 12
    new-instance v2, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-direct {v2, v0}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;-><init>(Lcom/google/common/io/FileBackedOutputStream$1;)V

    iput-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    goto :goto_5c

    .line 13
    :cond_57
    iget-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 14
    :goto_5c
    iget-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->memory:Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;

    iput-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    .line 15
    iget-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    if-eqz v2, :cond_8d

    .line 16
    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->file:Ljava/io/File;

    .line 17
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 18
    new-instance v0, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not delete: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_8d
    throw v1
    :try_end_8e
    .catchall {:try_start_4b .. :try_end_8e} :catchall_48

    :goto_8e
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/common/io/FileBackedOutputStream;->update(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 3
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 4
    :try_start_2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/io/FileBackedOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 5
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_1
    invoke-direct {p0, p3}, Lcom/google/common/io/FileBackedOutputStream;->update(I)V

    .line 7
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 8
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
