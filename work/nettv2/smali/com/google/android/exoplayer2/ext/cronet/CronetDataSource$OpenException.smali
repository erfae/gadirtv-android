.class public final Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
.source "CronetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenException"
.end annotation


# instance fields
.field public final cronetConnectionStatus:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;II)V
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 10
    iput p3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;->cronetConnectionStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 2
    iput p3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;->cronetConnectionStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 4
    iput p4, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;->cronetConnectionStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 6
    iput p3, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;->cronetConnectionStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;II)V

    .line 8
    iput p4, p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$OpenException;->cronetConnectionStatus:I

    return-void
.end method
