.class final Lorg/chromium/net/UploadDataProviders$2;
.super Ljava/lang/Object;
.source "UploadDataProviders.java"

# interfaces
.implements Lorg/chromium/net/UploadDataProviders$FileChannelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/UploadDataProviders;->create(Landroid/os/ParcelFileDescriptor;)Lorg/chromium/net/UploadDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$fd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    iput-object p1, p0, Lorg/chromium/net/UploadDataProviders$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/nio/channels/FileChannel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/UploadDataProviders$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 2
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lorg/chromium/net/UploadDataProviders$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0

    .line 3
    :cond_18
    iget-object v0, p0, Lorg/chromium/net/UploadDataProviders$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a file: "

    .line 5
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lorg/chromium/net/UploadDataProviders$2;->val$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
