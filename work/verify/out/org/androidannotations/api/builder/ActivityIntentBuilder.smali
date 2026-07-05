.class public abstract Lorg/androidannotations/api/builder/ActivityIntentBuilder;
.super Lorg/androidannotations/api/builder/IntentBuilder;
.source "ActivityIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/androidannotations/api/builder/ActivityIntentBuilder<",
        "TI;>;>",
        "Lorg/androidannotations/api/builder/IntentBuilder<",
        "TI;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/androidannotations/api/builder/IntentBuilder;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/androidannotations/api/builder/IntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public start()V
    .registers 3

    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startForResult(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/builder/IntentBuilder;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_e

    .line 2
    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .line 3
    :cond_e
    iget-object p1, p0, Lorg/androidannotations/api/builder/IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_13
    return-void
.end method
