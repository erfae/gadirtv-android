.class final Lcom/google/android/gms/internal/ads/zzky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field public zzahv:Lcom/google/android/gms/internal/ads/zzhp;

.field public zzasp:I

.field public final zzawy:[Lcom/google/android/gms/internal/ads/zzlr;

.field public zzawz:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzlr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzky;->zzawy:[Lcom/google/android/gms/internal/ads/zzlr;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzky;->zzawz:I

    return-void
.end method
