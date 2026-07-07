.class final Lcom/google/android/gms/internal/cast/zzbh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/internal/zzc;


# instance fields
.field private final synthetic zzvp:Lcom/google/android/gms/internal/cast/zzbi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbh;->zzvp:Lcom/google/android/gms/internal/cast/zzbi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbh;->zzvp:Lcom/google/android/gms/internal/cast/zzbi;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzbi;->zza(Lcom/google/android/gms/internal/cast/zzbi;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbh;->zzvp:Lcom/google/android/gms/internal/cast/zzbi;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzbi;->zza(Lcom/google/android/gms/internal/cast/zzbi;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbh;->zzvp:Lcom/google/android/gms/internal/cast/zzbi;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzbi;->zzb(Lcom/google/android/gms/internal/cast/zzbi;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbh;->zzvp:Lcom/google/android/gms/internal/cast/zzbi;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzbi;->zzb(Lcom/google/android/gms/internal/cast/zzbi;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method
