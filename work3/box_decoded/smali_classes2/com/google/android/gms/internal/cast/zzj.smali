.class final synthetic Lcom/google/android/gms/internal/cast/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzmh:Lcom/google/android/gms/internal/cast/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzj;->zzmh:Lcom/google/android/gms/internal/cast/zzg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzj;->zzmh:Lcom/google/android/gms/internal/cast/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzg;->zzaz()V

    return-void
.end method
