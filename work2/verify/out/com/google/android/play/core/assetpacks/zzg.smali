.class public final synthetic Lcom/google/android/play/core/assetpacks/zzg;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/assetpacks/zzbh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzg;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzg;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzC(Ljava/util/List;)V

    return-void
.end method
