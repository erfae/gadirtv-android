.class public final Lcom/google/android/gms/internal/ads/zzqv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final timestamp:J

.field public final zzaai:I

.field public final zzbqz:Z

.field private final zzbrk:Z

.field public final zzbrl:Z

.field public final zzbrm:Landroid/graphics/Rect;

.field public final zzbrn:Landroid/graphics/Rect;

.field public final zzbro:Landroid/graphics/Rect;

.field public final zzbrp:Z

.field public final zzbrq:Landroid/graphics/Rect;

.field public final zzbrr:Z

.field public final zzbrs:Landroid/graphics/Rect;

.field private final zzbrt:F

.field public final zzbru:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;FZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZI",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/graphics/Rect;",
            "FZ",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqv;->timestamp:J

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbrk:Z

    .line 4
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbrl:Z

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzaai:I

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbrm:Landroid/graphics/Rect;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbrn:Landroid/graphics/Rect;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbro:Landroid/graphics/Rect;

    .line 9
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbrp:Z

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbrq:Landroid/graphics/Rect;

    .line 11
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbrr:Z

    .line 12
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbrs:Landroid/graphics/Rect;

    .line 13
    iput p13, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbrt:F

    .line 14
    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbqz:Z

    .line 15
    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzqv;->zzbru:Ljava/util/List;

    return-void
.end method
