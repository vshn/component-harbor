local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.harbor;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('harbor', params.namespace);

{
  harbor: app,
}
