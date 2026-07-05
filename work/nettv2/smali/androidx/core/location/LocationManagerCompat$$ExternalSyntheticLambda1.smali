.class public final synthetic Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/core/util/Consumer;

.field public final synthetic f$1:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;Landroid/location/Location;I)V
    .locals 0

    iput p3, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;->f$0:Landroidx/core/util/Consumer;

    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;->f$1:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;->f$0:Landroidx/core/util/Consumer;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;->f$1:Landroid/location/Location;

    invoke-static {v0, v1}, Landroidx/core/location/LocationManagerCompat;->$r8$lambda$BuDFX8p4cZynZHSiCJ1nwl98OSc(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    return-void

    :goto_0
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;->f$0:Landroidx/core/util/Consumer;

    iget-object v1, p0, Landroidx/core/location/LocationManagerCompat$$ExternalSyntheticLambda1;->f$1:Landroid/location/Location;

    invoke-static {v0, v1}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->$r8$lambda$YCtILUhe93mA2Pmh3tYj1h0qzZs(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
