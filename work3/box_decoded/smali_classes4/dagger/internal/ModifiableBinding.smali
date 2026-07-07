.class public interface abstract annotation Ldagger/internal/ModifiableBinding;
.super Ljava/lang/Object;
.source "ModifiableBinding.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ldagger/internal/ModifiableBinding;
        multibindingContributions = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract bindingRequest()Ljava/lang/String;
.end method

.method public abstract modifiableBindingType()Ljava/lang/String;
.end method

.method public abstract multibindingContributions()[Ljava/lang/String;
.end method
