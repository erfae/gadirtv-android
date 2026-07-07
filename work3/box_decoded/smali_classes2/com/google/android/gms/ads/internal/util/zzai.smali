.class final synthetic Lcom/google/android/gms/ads/internal/util/zzai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zzedn:Lcom/google/android/gms/ads/internal/util/zzag;

.field private final zzeds:I

.field private final zzedt:I

.field private final zzedu:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzag;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzai;->zzedn:Lcom/google/android/gms/ads/internal/util/zzag;

    iput p2, p0, Lcom/google/android/gms/ads/internal/util/zzai;->zzeds:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/zzai;->zzedt:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/zzai;->zzedu:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzai;->zzedn:Lcom/google/android/gms/ads/internal/util/zzag;

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/zzai;->zzeds:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/zzai;->zzedt:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/util/zzai;->zzedu:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzag;->zza(IIILandroid/content/DialogInterface;I)V

    return-void
.end method
