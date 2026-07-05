.class public final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
.super Ljava/lang/Object;
.source "BitmapPreFiller.java"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

.field private final defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 4
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method

.method private static getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I
    .locals 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->cancel()V

    .line 3
    :cond_0
    array-length v0, p1

    new-array v1, v0, [Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 5
    aget-object v4, p1, v3

    .line 6
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_2

    .line 7
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v6, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v5, v6, :cond_1

    .line 8
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 9
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 10
    :goto_1
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    .line 11
    :cond_2
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->build()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 13
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()J

    move-result-wide v3

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getMaxSize()J

    move-result-wide v5

    add-long/2addr v5, v3

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge p1, v0, :cond_4

    .line 14
    aget-object v4, v1, p1

    .line 15
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    long-to-float p1, v5

    int-to-float v3, v3

    div-float/2addr p1, v3

    .line 16
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :goto_3
    if-ge v2, v0, :cond_5

    .line 17
    aget-object v4, v1, v2

    .line 18
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 19
    invoke-static {v4}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I

    move-result v6

    .line 20
    div-int/2addr v5, v6

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 22
    :cond_5
    new-instance p1, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-direct {p1, v3}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;-><init>(Ljava/util/Map;)V

    .line 23
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-direct {v0, v1, v2, p1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    .line 24
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
